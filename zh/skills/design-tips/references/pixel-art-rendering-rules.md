# CLAUDE.md 像素画渲染规则

精灵图里清晰的像素到屏幕上变糊：纹理用 Nearest，整数倍缩放，镜头和精灵按同一方式取整。

## 步骤

1. 复制像素画渲染规则。
2. 发给 Claude Code，让它加进 CLAUDE.md。
3. 得到：每个像素都是同样大小的方块，镜头跟着角色走时不再抖动。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 像素画渲染规则

```markdown
像素画渲染规则：
1. 所有纹理都用最近邻过滤（Nearest）。不要 mipmap，精灵图不要有损压缩
2. 选定一个基础分辨率（比如 384x216），只按整数倍放大。剩下的空间用黑边填满
3. 网页游戏：给 canvas 加上 CSS image-rendering: pixelated。如果用 2D canvas 绘制，在绘制前把 imageSmoothingEnabled 设成 false。整数倍缩放按屏幕的物理像素算（窗口尺寸乘以 devicePixelRatio），不按 CSS 像素算
4. 移动计算照常用小数，只在绘制时取整到基础分辨率的像素。镜头和精灵用同一种方式取整，否则它们会互相抖动
5. 整个游戏只用一种像素尺寸：精灵、图块、粒子、特效和 UI 元素都不单独缩放
6. 运行时不要旋转像素画。用画好的旋转帧，或者只按 90 度一档旋转
7. 像素字体用原生尺寸，关掉抗锯齿
8. 修完后截一张图放大看：每个像素都是同样大小的方块，没有两个像素宽的，没有模糊的边。从现在起，新素材进来之前，先把它放在一个原尺寸的图块旁边，检查像素网格是否对得上
```

## Godot、Unity 和 Phaser 设置

```text
Godot 4：
- Display > Window > Size：把 Viewport Width/Height 设成你的基础分辨率
- Rendering > Textures > Default Texture Filter：Nearest
- Display > Window > Stretch：Mode 选 viewport，Scale Mode 选 integer（4.3+）
- Rendering > 2D > Snap：打开 Snap 2D Transforms to Pixel
- 精灵图导入：Compress Mode 选 Lossless。像素字体导入：Antialiasing 选 None，Subpixel Positioning 选 Disabled

Unity：
- 精灵图导入：Filter Mode 选 Point，Compression 选 None，关掉 Generate Mip Maps，所有精灵图用同一个 Pixels Per Unit
- 给主摄像机加一个 Pixel Perfect Camera，设成你的基础分辨率
- 关掉 Anti-aliasing（MSAA）

Web（Phaser）：
- 在 game config 里设置 pixelArt: true。它会关掉 antialias，打开 roundPixels
```

## 背景

你用 Claude 做的像素游戏，现在很可能是糊的，只是你还没凑近看。

游戏引擎和浏览器默认会把纹理做平滑处理，所以精灵图里清晰的像素，到了屏幕上就糊了。再加上 1.5x 这种非整数缩放，同一条线有的地方两个像素宽，有的地方一个像素宽。

如果你在用 Claude Code 做像素游戏，把这些规则发给它，让它加进 CLAUDE.md。改完以后，你的游戏会和 Steam 上的独立游戏一样干净，镜头跟着角色走时也不再抖动。

## 来源

来自 [Copybook](https://copybook.page/zh/t/pixel-art-rendering-rules-for-claude-md)：@Voxyz_ai 2026年11月17日[发在 X 上](https://x.com/Voxyz_ai/status/2122789374039314882)，截至 2026年11月18日有 306 次收藏。适用于 Claude Code。
