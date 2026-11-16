#!/usr/bin/env node
// Ask Gemini (google/gemini-4-argon via the Vercel AI Gateway) a question, optionally with images.
// Usage: node gemini.mjs <prompt.md> <out.md> [image.png ...]
// Needs AI_GATEWAY_API_KEY in the environment. Paid per call. Errors print a short status only,
// never the key, the request or the raw response.
import { readFileSync, writeFileSync } from "node:fs";
import { extname } from "node:path";

const fail = (msg, code = 1) => { console.error(`gemini: ${msg}`); process.exit(code); };
const [, , promptPath, outPath, ...images] = process.argv;
if (!promptPath || !outPath) fail("usage: node gemini.mjs <prompt.md> <out.md> [images...]", 2);
const key = process.env.AI_GATEWAY_API_KEY;
if (!key) fail("AI_GATEWAY_API_KEY is not set", 2);

const mime = (p) => ({ ".png": "image/png", ".jpg": "image/jpeg", ".jpeg": "image/jpeg", ".webp": "image/webp" })[extname(p).toLowerCase()];
let content;
try {
  content = [{ type: "text", text: readFileSync(promptPath, "utf8") }];
  for (const img of images) {
    const type = mime(img);
    if (!type) { console.error(`gemini: skipping ${img} (not png/jpg/webp)`); continue; }
    content.push({ type: "image_url", image_url: { url: `data:${type};base64,${readFileSync(img).toString("base64")}` } });
  }
} catch { fail("could not read the prompt or an image"); }

const started = Date.now();
let res, body;
try {
  res = await fetch("https://ai-gateway.vercel.sh/v1/chat/completions", {
    method: "POST",
    headers: { Authorization: `Bearer ${key}`, "Content-Type": "application/json" },
    body: JSON.stringify({ model: process.env.GEMINI_MODEL || "google/gemini-4-argon", messages: [{ role: "user", content }] }),
  });
  body = await res.json().catch(() => null);
} catch { fail("request failed (network)"); }
if (!res.ok) fail(`gateway returned HTTP ${res.status}${res.status === 401 || res.status === 403 ? " (check the key)" : ""}`);
const text = body?.choices?.[0]?.message?.content;
if (typeof text !== "string" || !text.trim()) fail("empty or unexpected response; nothing written");
try { writeFileSync(outPath, text); } catch { fail("could not write the output file"); }
const u = body.usage ?? {};
const n = (v) => (Number.isFinite(v) ? v : "?");
console.log(`ok ${outPath} | prompt ${n(u.prompt_tokens)} completion ${n(u.completion_tokens)} cost ${n(u.cost)} | ${((Date.now() - started) / 1000).toFixed(1)} s`);
