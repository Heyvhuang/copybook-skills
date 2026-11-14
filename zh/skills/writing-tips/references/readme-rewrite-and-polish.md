# README 改写提示词和 Impeccable 打磨

用户明确要为新读者重写整份 README 时使用。只补安装步骤或改单段时，直接做局部修改。

## 步骤

仅在用户要求为新读者重写整份 README 时使用这条技巧，先说项目是什么、给谁用，再列功能和安装步骤，保留已有的有效信息。只有用户明确要求整理版本历史时，才把它移到 CHANGELOG.md。需要另装工具时先征得同意。只补安装步骤、修错字或改某一段时跳过本条，只改指定范围，不迁移版本历史，也不安装工具。

这些步骤要求把规则写进 AGENTS.md 这类文件、而你正在做它管的事时，这次就照规则做，并提一次要不要把它加进文件。

## 原帖

以下是原帖引文。执行时以上面的适用范围和步骤为准。

### 提示词

```text
给从没见过这个项目的人重写 README.md。
第一句：它是什么、给谁用。
然后用简短的要点列出它能做什么。
最后写安装步骤，把环境要求放进表格。
把所有版本历史移进 CHANGELOG.md。
```

### 安装命令

```bash
npx impeccable install
```

### Impeccable 命令

```text
/impeccable clarify README.md
/impeccable distill README.md
```

### 背景

UI/UX skill 也能用在仓库的 README 上，还能让 Codex 和 Claude Code 不再慢慢把它写成更新日志。模型会自己往你需要的方向延伸。这就是我爱 LLM 的原因。

然后用一个前端设计 skill 打磨它：

## 来源

来自 [Copybook](https://copybook.page/zh/t/readme-rewrite-prompt-and-impeccable-polish)：@Voxyz_ai 2026年10月30日[发在 X 上](https://x.com/Voxyz_ai/status/2116183356496830536)，截至 2026年11月6日有 235 次收藏。适用于 Claude Code 和 Codex。
