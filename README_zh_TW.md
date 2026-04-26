# 價格行為分析 Skill (Price Action Skill)

本倉庫包含一個專業的**價格行為分析 Skill**。它整合了多種先進的交易方法論，旨在提供高精度的市場分析和交易設置。

## 概述

**價格行為 Skill** 融合了多個機構級交易概念：
- **ICT 方法論**：流動性池 (SSL/BSL)、公允價值缺口 (FVG)、位移 (Displacement) 及市場結構 (BOS/CHoCH)。
- **GEX/Gamma 機制**：交易商對沖動態、看漲/看跌期權牆 (Call/Put Walls) 以及零 Gamma 水平。
- **經典價格行為**：支撐/阻力、成交量分析及蠟燭圖形態。
- **日內錨點**：VWAP、盤前高低點及開盤區間動態。

## 安裝方式

您可以使用以下一鍵指令安裝此 Skill：

### Mac / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/bigeye-ai/price-action-skill/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/bigeye-ai/price-action-skill/main/install.ps1 | iex
```

## 功能特點

- **結構化分析**：詳細解析市場偏見、關鍵水平及交易設置。
- **社群內容生成**：針對富途牛牛或 Discord 等平台優化，以交易者同儕的口吻分享見解。
- **日內回顧**：簡明扼要地總結交易時段表現及成交量背景。

## 倉庫結構

```text
.
├── README.md              # 英文文檔
├── README_zh_TW.md        # 繁體中文文檔
└── skills/
    └── price-action/
        └── SKILL.md       # 核心 Skill 定義文件
```

---

[English Version](./README.md)
