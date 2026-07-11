<div align="center">

<img src="docs/promo-banner.jpg" alt="华夏：文明崛起" width="100%" style="border-radius: 12px; margin-bottom: 20px;">

# 华夏：文明崛起

![Version](https://img.shields.io/badge/version-0.4.0-orange?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)
![HTML5](https://img.shields.io/badge/HTML5-Canvas-e34f26?style=flat-square&logo=html5&logoColor=white)
![Made with Love](https://img.shields.io/badge/made_with-❤️-red?style=flat-square)

一款以华夏五千年历史为背景的文明模拟游戏，灵感来源于《矮人要塞》等经典建造模拟游戏。

[🎮 在线试玩](https://awckao.github.io/huaxia-civilization/) ·
[📖 游戏文档](docs/project-docs.html) ·
[📝 推广物料](docs/promo-kit/index.html) ·
[💬 提交反馈](https://github.com/awckao/huaxia-civilization/issues)

</div>

## 🌟 游戏亮点

| 🏗️ 文明建设 | ⚔️ 军事征伐 | 📚 科技研究 | 🌤️ 天气灾害 |
|------------|------------|------------|-------------|
| 20+ 种建筑 | 多兵种编制 | 四大科技分支 | 6 种天气 |
| 四大职业体系 | 出征讨伐 | 17 项科技 | 5 种自然灾害 |
| 资源经济链 | 防守巡逻 | 时代跨越 | 动态环境 |
| 领地等级系统 | 势力外交 | 诸子百家 | 生产影响 |

## 🎮 快速开始

### 在线游玩

直接访问：**https://awckao.github.io/huaxia-civilization/**

### 本地运行

直接用浏览器打开 `index.html` 即可，无需任何依赖安装。

```bash
# 方式一：直接双击打开
双击 index.html

# 方式二：本地服务器（推荐）
python -m http.server 8080
# 然后访问 http://localhost:8080
```

## 🕹️ 游戏操作

| 快捷键 | 功能 | 快捷键 | 功能 |
|--------|------|--------|------|
| `1` | 建造工具 | `WASD` | 移动地图 |
| `2` | 农田工具 | `空格` | 暂停/继续 |
| `3` | 伐木工具 | `Tab` | 切换右侧面板 |
| `4` | 采矿工具 | `滚轮` | 缩放地图 |
| `5` | 道路工具 | `右键` | 取消操作 |
| `6` | 攻击模式 | 鼠标边缘 | 滚动地图 |
| `7` | 查看模式 | | |

### 新手入门

1. **安家落户** — 先建造几座房屋让族人有栖身之所
2. **发展农业** — 开垦农田保证粮食供应
3. **科技研究** — 建造学堂研究科技提升效率
4. **建立武备** — 建造兵营训练战士保卫家园
5. **扩张领地** — 积累影响力升级领地扩大建设范围

## 🏛️ 游戏系统

### 文明时代

从蛮荒部落到辉煌帝国，跨越千年历史：

- **蛮荒时代** — 石器工具，原始部落，生存为第一要务
- **青铜时代** — 青铜冶炼，城邦兴起，文化萌芽
- **铁器时代** — 铁制农具，诸雄争霸，百家争鸣
- **帝国时代** — 大一统帝国，万里长城，盛世辉煌

### 四大职业

| 职业 | 职责 | 代表建筑 |
|------|------|----------|
| 📖 **士** | 研究科技、治理民政 | 学堂、官府 |
| 🌾 **农** | 耕种粮食、养殖牲畜 | 农田、粮仓 |
| 🔨 **工** | 建造房屋、制作工具 | 作坊、矿场 |
| 🪙 **商** | 贸易往来、互通有无 | 集市、客栈 |

### 诸子百家

- **儒家** — 仁政德治，民心所向
- **法家** — 严刑峻法，国力强盛
- **道家** — 无为而治，休养生息
- **墨家** — 兼爱非攻，巧夺天工
- **兵家** — 运筹帷幄，决胜千里

## 🛠️ 技术实现

- **纯前端实现** — 单 HTML 文件，HTML5 Canvas 渲染
- **无外部依赖** — 不依赖任何第三方库
- **程序化生成** — 噪声算法生成地形地图
- **实体 AI 系统** — 基于状态机的族人行为系统
- **实时模拟** — 需求驱动的经济和生态模拟

## 📁 项目结构

```text
huaxia-civilization/
├── index.html              # 游戏入口（直接打开即可玩）
├── src/
│   └── index.html          # 游戏源代码（单文件）
├── docs/
│   ├── CHANGELOG.md        # 版本更新日志
│   ├── CONTRIBUTING.md     # 贡献指南
│   ├── PROMO.md            # 推广文案包
│   ├── TRIBUTE.md          # 特别致敬
│   ├── promo-banner.jpg    # 宣传海报
│   ├── project-docs.html   # 项目文档
│   └── promo-kit/          # 推广物料包
├── .github/
│   └── project.yml         # GitHub 项目配置
├── .gitignore              # Git 忽略配置
├── upload-awckao.bat       # 一键上传脚本
├── package-release.bat     # 打包脚本
├── README.md               # 项目说明
└── LICENSE                 # MIT 许可证
```

## 🗺️ 开发路线图

### ✅ 已实现

- 基础建造与资源系统
- 族人 AI 与职业系统
- 科技树与时代演进
- 军事与战斗系统
- 势力范围与外交
- 领地等级系统
- 天气系统
- 自然灾害系统
- 三国志风格 UI

### 🚧 计划中

- 更多时代内容（铁器时代、帝国时代）
- 诸子百家系统完善
- 更多建筑和兵种
- 史诗英雄系统
- 地图编辑器
- 模组支持

## 🤝 贡献指南

欢迎提交 Issue 和 Pull Request！详见 [贡献指南](docs/CONTRIBUTING.md)。

## 📜 许可证

本项目采用 MIT 许可证开源，详见 [LICENSE](LICENSE) 文件。

## 🙏 致谢

- 灵感来源于 **Dwarf Fortress**《矮人要塞》、《环世界》、《三国志》等经典游戏
- 特别感谢 [Bay 12 Games](https://www.bay12games.com/dwarves/) 的 Tarn Adams 和 Zach Adams 创造了矮人要塞这一传奇作品
- 华夏五千年历史为游戏提供了丰富的文化素材
- 所有热爱中华文明和独立游戏的玩家们

---

<div align="center">

**如果觉得不错，别忘了给个 ⭐ Star 支持一下！**

Made with ❤️ for Chinese history and indie games

</div>