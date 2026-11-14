# 组件每种状态的压力测试

示例数据下能用说明不了什么：真实组件放到临时页面，每种要紧的状态都渲染一遍，只修能复现的。

## 步骤

1. 复制 /goal 提示词，填好 [COMPONENT NAME OR PATH]。
2. 在项目里发给 Codex。
3. 得到：组件在每种相关状态下都渲染一遍，只修能复现的问题。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
/goal Check [COMPONENT NAME OR PATH] and make sure it survives the content and states it will encounter in real use.

INSPECT ONLY THIS COMPONENT.

Do not modify it yet. Read its actual props, slots, states, data sources, and where it is used. Based on what it really accepts, select the stress cases that apply.

TEST THESE WHEN RELEVANT:

→ No data, one item, and many items
→ Loading, error, disabled, and permission-denied states
→ Normal text, very long text, and an unbreakable string
→ Missing images, very large numbers, and incomplete data
→ A 320px viewport and any other widths the component supports
→ Dark mode; skip it if the project does not support it

Do not add irrelevant cases just to make the list longer.

BUILD THE TEST PAGE:

Create a temporary page inside the app. Import the real component and use the project’s existing fonts, styles, tokens, and layout context. Render every scenario side by side in one pass.

Do not rebuild a lookalike component or connect to production data.

Open the page and record only problems you can actually reproduce. Do not predict failures from the code or report personal taste as a bug.

FIX ONLY CONFIRMED PROBLEMS:

Fix them one at a time. After each change, rerender the original failing state and verify:

→ Content no longer overflows or disappears
→ Primary actions still work
→ Keyboard and focus behavior did not regress
→ States that already passed were not broken

Do not use this as an excuse to redesign the component, change its public API, or touch functionality outside the test page.

RETURN:

→ Every state you tested
→ Before-and-after screenshots
→ What you fixed
→ Anything still unresolved
→ Relevant test and build results

DONE WHEN:

Every applicable state has been rendered, every confirmed problem has been fixed and retested, the existing tests pass, and the build succeeds.
```

## 背景

上线之前，用 `/goal` 把 app 里最重要的组件放进每种要紧的状态里压一遍。组件在示例数据下能用，只能说明示例没把它弄坏。没有数据时会怎样？标题很长时，按钮会不会被挤出手机屏幕？API 出错时，用户还有没有下一步可走？

这条 `/goal` 把真实组件放到一个临时页面上，一次跑完这些状态。只有能复现的失败才改组件，每修一处，就把同一个状态重跑一遍。

## 来源

来自 [Copybook](https://copybook.page/zh/t/stress-test-a-component-in-every-state)：@Voxyz_ai 2026年8月26日[发在 X 上](https://x.com/Voxyz_ai/status/2092688531705729210)，截至 2026年9月23日有 487 次收藏。适用于 Codex。
