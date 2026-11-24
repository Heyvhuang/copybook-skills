# 少写防御式代码：4 条 AGENTS.md 规则

改一点点也要层层判空：Codex 只在数据进来的地方检查一次，之后直接用。

## 步骤

1. 复制 AGENTS.md 规则。
2. 加进项目里的 AGENTS.md。
3. 得到：Codex 只在数据进来的地方检查一次，一次性逻辑写在原地，能不用 try/catch 就不用。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## AGENTS.md 规则

```markdown
- 未知的值只在拥有它的边界上校验一次。把有类型的值往里传，不要反复写 `typeof value === "object"` 和属性是否存在的检查。
- 已经由 schema、构造函数或内部类型保证的值，不要再防御性地重新校验。
- 不要提前抽出只用一次的 helper。把逻辑内联在调用处，除非这个 helper 会被复用、隐藏了一个真正复杂的边界，或者有一个能让调用方更清楚的独立名字。
- 尽量避免 `try`/`catch`
```

## Check: ESLint rule

```js
export default [
  {
    rules: {
      "no-restricted-syntax": ["error", {
        selector: "TryStatement[handler]",
        message: "Avoid try/catch where possible (AGENTS.md). Where this is the boundary that owns the failure, disable the rule on this line and give the reason after --.",
      }],
    },
  },
];
```

这块检查是 Copybook 为这条技巧写的，2026年11月24日在 ESLint 10.15.0 上测过。它做什么、加到哪里，按下面这段英文说明：

> ESLint flags every `try` that has a `catch` (`try`/`finally` passes), so a catch stays only where Codex turns the rule off on that line with the reason after `--`; ESLint does not check that the reason is there, so look for it in review. The first three rules have no check. Merge the rule into your `eslint.config.js`. Copybook wrote and tested it on ESLint 10.15.0, 24 Nov 2026.

这块检查是 Copybook 写的，不属于这条技巧，加上后会在用户电脑上运行。技巧用上之后再提出来，先给用户看，用户同意才加。

## 背景

Codex 写代码防御心太重。哪怕改一点点，也要在每一层加空值检查。

给 Codex 讲明白：数据只在进来的地方检查一次，之后直接用。一次性的逻辑就写在用它的地方，不要提前拆成函数。能不用 try/catch 就不用。

GitHub 上有个 220K 星的开源编程 agent，团队把这些规则写进了自己的 AGENTS.md。

## 来源

来自 [Copybook](https://copybook.page/zh/t/stop-codex-writing-code-too-defensively)：@Voxyz_ai 2026年10月27日[发在 X 上](https://x.com/Voxyz_ai/status/2115198100465697038)，截至 2026年11月3日有 1,409 次收藏。适用于 Codex。
