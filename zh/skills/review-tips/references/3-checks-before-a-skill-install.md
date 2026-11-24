# 装 skill 前的 3 项检查

有人在 ClawHub 上放了 314 个恶意 skill：装之前查来源、扫代码、问清权限，不到 5 分钟。

## 步骤

1. 复制这 3 项检查。
2. 任何 skill 装进你的 agent 之前，先逐项过一遍。
3. 得到：不到 5 分钟，你就知道谁写的、它会往外连什么、要什么权限。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 我现在装任何 skill 前都做的 3 项检查

```text
1. 来源：作者是谁，有没有其他正经项目
2. 代码扫描：搜 curl、wget、exec、外部 URL
3. 权限：它需要文件系统权限吗？shell？为什么？
```

## Check: skill scan script

```bash
#!/bin/sh
dir=$1
if [ -z "$dir" ] || [ ! -d "$dir" ] || [ ! -r "$dir" ]; then
  echo "Can't scan '$dir': it is not a folder you can read." >&2
  exit 2
fi
st=$(mktemp) || exit 2
find "$dir" \( -type f -o -type l \) -exec sh -c '
  st=$1; shift
  for f; do
    case "${f##*/}" in
      .env*|*.pem|*.key|*.p12|id_*|*credentials*|*secret*) echo "$f: skipped, may hold secrets; read it yourself"; echo hit >> "$st"; continue ;;
    esac
    if [ -L "$f" ]; then echo "$f: a symlink, not followed; read it yourself"; echo hit >> "$st"; continue; fi
    lines=$(grep -naE "(curl|wget|exec)|https?://" "$f")
    case $? in
      0) echo "$f: line $(printf "%s\n" "$lines" | cut -d: -f1 | paste -sd, -)"; echo hit >> "$st" ;;
      1) ;;
      *) echo "$f: could not read it" >&2; echo error >> "$st" ;;
    esac
  done' sh "$st" {} + || echo error >> "$st"
if grep -q error "$st"; then
  echo "Scan incomplete: fix the errors above and run it again." >&2; r=2
elif grep -q hit "$st"; then r=1
else echo "No curl, wget, exec or external URLs in $dir."; r=0
fi
rm -f "$st"
exit $r
```

这块检查是 Copybook 为这条技巧写的，2026年11月24日在 macOS 26.6 上测过。它做什么、加到哪里，按下面这段英文说明：

> Lists the file and line number of each place in a skill that calls curl, wget or exec or names an external URL, without printing the line. It also lists files it skips because they may hold secrets (`.env`, keys, credentials) and symlinks it does not follow, exits 1 when there is something to read, and exits 2 when it cannot read the folder or a file in it. Save it as `scan-skill.sh` and run `sh scan-skill.sh path/to/skill` before you install. Copybook wrote and tested it on macOS 26.6, 24 Nov 2026.

这块检查是 Copybook 写的，不属于这条技巧，加上后会在用户电脑上运行。技巧用上之后再提出来，先给用户看，用户同意才加。

## 背景

有人在 ClawHub 上发了 314 个 skill。每一个都是恶意的。装上之后，它们会读你的 MEMORY.md、SOUL.md，你的 agent 记得的一切，全部泄露。

我查了自己的 5 个 agent。干净。但说实话，出了一身冷汗。

做完不到五分钟。不做这三项检查就装 skill，就像不看合同就签字。

## 来源

来自 [Copybook](https://copybook.page/zh/t/run-3-checks-before-you-install-any-skill)：@Voxyz_ai 2026年3月14日[发在 X 上](https://x.com/Voxyz_ai/status/2032788846581031362)，截至 2026年10月24日有 308 次收藏。
