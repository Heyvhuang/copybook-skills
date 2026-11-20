# 设计 · 33 条

Copybook 的 33 条「设计」技巧，按收藏数排序，与合不合适无关：读完整个列表再选，合适的那条常常在后面。每条的文件是 `../design-tips/references/<名字>.md`。

| 技巧 | 做什么 |
| --- | --- |
| two-agents-md-lines | 清理页面上重复的标语、眉题等装饰文案，保留功能标签和操作说明。 |
| page-design-as-an-image-first | 直接让 Codex 写页面，设计总很烂：一句话让内置图像模型先画出页面，再交给写代码的模型照着做。 |
| huashu-art-motion-35-art-styles | 想要梵高、莫奈或包豪斯风格的动画：用代码画出来，几乎不动的片子交付前会被打回。 |
| 8-frontend-reference-sites | 卡在风格、组件、动效、演示视频或收尾：8 个网站按卡点分好，存进 CLAUDE.md，该用哪个它知道。 |
| 120-sample-motion-library | 动效靠点选：120 个带标注的样例分 5 组，勾选喜欢的，Claude Code 就把它们做进你的视频或网站。 |
| good-css-css-check | 手机上 hover 卡住、表单一打开全红框：47 条现代 CSS 写法，先列出网站样式的毛病，不改代码。 |
| video-sound-by-measurement | Opus 5.5 听不见自己配的声音：librosa 找节拍，120 Hz 以下波形核对，导出的 MP4 上测响度。 |
| 4-person-motion-video-team | Claude Code 里做动效视频：拆片、分镜、审片 3 个 subagent 配合主会话做片，你只管像导演一样拍板。 |
| claude-motion-project-animation | 哪部分值得做成动画：按 Anthropic 指南挑出候选、写好分镜，你选的那个用 HyperFrames 做出来。 |
| design-md-from-sites-you-like | 页面一眼 AI 味，是它没见过你喜欢的样子：3 到 5 张截图写成 DESIGN.md，再装两个设计 skill。 |
| tasteskill-v2-ai-look-check | 页面一眼就像 AI 做的：按桌面、平板、手机宽度列出每一处痕迹，FAIL 排在 WARN 前，不改代码。 |
| dashboard-redesign-2-skills | 仪表盘一眼 AI 做的：ui-ux-pro-max 加 frontend-design，改版提示词里点名它们，再从 4 个角度审查。 |
| screenshot-first-ui-rebuild | UI 层级和密度有问题：每个页面先截图，再只用一套间距、字号和最多 5 种颜色重做。 |
| codex-computer-use-as-mcp-server | Claude Code 缺个好浏览器：ChatGPT 的 computer use 当本地 MCP，点页面、截图，对比线上和本地。 |
| ui-ux-audit-as-a-senior-designer | 有实权的设计审查：先定审美基线，正确性直接修，能用但显廉价的地方找出来，大改动只提建议。 |
| lemo-opuscar-launch-films | 没有视频模型：TTS 旁白、免费采样库配乐，每一帧按 43 种风格之一用代码渲染，30 到 60 分钟。 |
| 4-starts-for-code-only-animation | 喜欢的动画、一句想法、一张角色图、想要的画风：各一条提示词，渲染成一个 HTML 文件，加配乐。 |
| awesome-design-md-shadcn-skill | 页面总是默认 shadcn 味：Stripe 或 Linear 风格的 DESIGN.md，整套组件照着改，附一页设计系统。 |
| awwwards-scoring-loop | 只在用户明确想用 Awwwards 评分探索视觉方向时使用，分数用于讨论设计。 |
| component-stress-test | 示例数据下能用说明不了什么：真实组件放到临时页面，每种要紧的状态都渲染一遍，只修能复现的。 |
| 6-chatgpt-photo-prompts | 不请摄影师也有专业质感：职业头像、电影剧照、旅行照、杂志大片、老照片修复、黄金时刻补光。 |
| every-ui-state-with-design | 功能做之前先看到每个状态：/design 配一个设计参考仓库，默认、加载、空、出错、成功都画成稿。 |
| image-options-in-one-grid | 图片方案一张张生成太烧额度：一条全局规则让所有方案进同一张带编号的网格图，再做你挑中的。 |
| camera-moves-for-video-prompts | Opus 5.5 做的视频像幻灯片：6 种运镜的名字和各自效果，外加要写的秒数和速度。 |
| learn-taste-design-corrections | 你总在改同样的设计错误：一次会话里的每个修正，都变成一条带理由的严格规则。 |
| pixel-art-rendering-rules | 精灵图里清晰的像素到屏幕上变糊：纹理用 Nearest，整数倍缩放，镜头和精灵按同一方式取整。 |
| happy-path-debt-found-and-fixed | 界面只在数据加载快、什么都不出错时才正常：缺的状态和布局错乱逐个组件修好，设计不变。 |
| unslop-prompt | 页面第一眼就像 AI 做的：列出每处 AI 味的痕迹，先写 5 行方向等你点头，再一轮一轮改。 |
| 703-video-prompts-one-remade | 给产品做一支爆款那样的视频：703 条提示词里最适合你的 5 条，你选的那条重做成一个 HTML 文件。 |
| hallmark-audit-and-redesign | 标题上方的小标签一眼暴露是 AI 做的：一条命令列出页面的问题，另一条整页重做，内容和表单保留。 |
| internet-archive-clips-and-music | 镜头需要老电影或老唱片：自动搜 Internet Archive 的免费 API，只用公有领域条目，每条记下来源。 |
| designers-landing-page-skill | 想要有设计感的落地页：一轮问题问完，布局、文案、字体和间距都替你定。 |
| refero-style-prompt | 页面换哪家创业公司都一样：以 Refero 风格为参考，先批方案，再写进 DESIGN.md，截图对照它检查。 |
