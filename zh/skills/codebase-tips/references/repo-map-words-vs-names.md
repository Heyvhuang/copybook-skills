# 能点的仓库地图：叫法 vs 代码名

你怎么叫一个模块，和代码里怎么叫它对不上：每一处都标红，最容易导致改错的排在最前。

## 步骤

1. 复制提示词。
2. 在项目里把它发给 Claude Code。
3. 得到：docs/codemap/ 里一张能点的地图，标出你的叫法和代码里名字对不上的地方。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
分析当前代码库。不要改产品代码，只创建或更新 docs/codemap/ 下的文件。

忽略 vendor、build、dist、cache 和其他生成出来的目录。

如果 docs/codemap/ 已经存在，先拿现有的 codemap.lock 和当前仓库对比，列出改过的模块，再把下面三个文件一起重新生成：

1. docs/codemap/codemap.html

做一个完全自包含、浏览器直接打开的交互式代码地图，包括：

- 主要模块、服务、数据库、队列和外部依赖
- 主节点不超过 20 个，底层文件归到所属模块下
- 模块之间的调用和数据流
- 最重要的 3-5 条端到端流程
- 默认用清晰的深色主题
- 第一屏就能看到系统边界和最重要的数据流
- 按模块类型上色，配一个简单的图例
- 自动布局，尽量减少连线交叉
- 点任意模块，高亮它的上游调用方、下游依赖、相关测试和所属流程，并显示我们对它的叫法
- 选中一条流程，高亮它的完整路径
- 支持搜索、筛选、缩放和拖动
- 每个模块旁边写上我们对它的叫法；和代码里模块名对不上的叫法标红
- 一个「叫法 vs 代码名」面板：左边是我们的叫法，右边是代码里的名字和路径，最可能导致改错的排在最前面

顶部显示仓库名、生成时间，以及基于哪个 commit 生成。

2. docs/codemap/codemap.json

用这个结构：

{
  "generated_at": "",
  "generated_from_commit": "",
  "scope": [],
  "nodes": [],
  "edges": [],
  "flows": [],
  "mismatches": []
}

每个 node 必须包含：

- id
- path
- role
- entrypoints
- tests
- constraints
- evidence
- aliases：大家怎么叫这个模块，每个叫法都注明出处（README、文档、界面文字、路由、issue 和 commit 标题）

每条 edge 必须包含：

- from
- to
- type
- evidence

type 只能是：

- imports
- calls
- reads
- writes
- publishes
- subscribes

每条 flow 必须包含：

- trigger
- steps
- outcome

每个 step 都要引用已存在的 node id。

每个 mismatch 必须包含：

- word：我们怎么叫它
- code_name
- path
- change：该改哪一边，代码里的名字还是我们的叫法

只列出对不上的地方，代码和文档都不要改。

每个 node 和 edge 都附上对应的源码路径和符号。没有源码证据的关系标成 unknown，不要猜。

3. docs/codemap/codemap.lock

用能解析的 JSON 记录：

- 当前 commit
- 工作区有没有未提交的改动
- 生成时间
- 扫描范围
- 排除的目录
- 指纹算法
- 每个顶层模块的确定性指纹，按它受 git 跟踪的文件路径和当前内容计算

找不到现有的 codemap.lock，就把所有模块当成新的，生成完整地图。

做完后确认：

- codemap.json 能正常解析
- 每个 node 的路径都存在，每个 evidence 符号都能在源码里找到
- 每条 edge 和每个 flow step 都引用已存在的 node
- codemap.html 和 codemap.json 用的是同一套 nodes、edges 和 flows
- codemap.lock 和当前 commit、工作区状态、模块指纹一致
- 每个没有源码证据的关系都标成了 unknown
- 每个叫法都能在它的出处里找到；找不到的标成 unknown，不要编

这三个文件必须一起从当前仓库生成，永远不要只手动改其中一个。

最后给我看：

- 创建或修改了哪些文件
- 哪些模块过期了
- 还剩哪些 unknown
- 对不上的叫法，最容易搞混的排在最前面
- 校验结果
- 完整的 diff
```

## 背景

让 Opus 5.5 给你的仓库做一张能点的地图，再标出你的叫法和代码里的名字，哪些地方对不上。

点任意一个模块，就能看到谁在调用它、它依赖什么、主要流程、相关测试、源码证据，以及你平时怎么叫它。

它会生成：

- `docs/codemap/codemap.html`
- `docs/codemap/codemap.json`
- `docs/codemap/codemap.lock`

## 来源

来自 [Copybook](https://copybook.page/zh/t/clickable-repo-map-with-words-vs-names)：@Voxyz_ai 2026年11月5日[发在 X 上](https://x.com/Voxyz_ai/status/2118418074508710296)，截至 2026年11月12日有 303 次收藏。适用于 Claude Code。
