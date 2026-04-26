---
name: price-action
description: >
  Expert price action analysis skill combining ICT methodology, GEX/gamma mechanics,
  classic S/R structure, and VWAP/liquidity pool concepts. Use this skill whenever
  the user asks to: analyze chart structure or price behavior, generate a trade setup
  with entry/SL/TP logic, write price action commentary for Futu NiuNiu or Discord
  posts (in Chinese or English), recap intraday price action for a community or bot,
  identify key levels (gamma walls, FVG, SSL/BSL, VWAP), discuss dealer hedging
  dynamics, or explain why price moved the way it did. Trigger even for casual
  phrasing like "what's price doing", "break down today's action", "write a post
  about the setup", "where are the levels", or "recap the session."
---

# Price Action Skill

Synthesizes ICT, GEX, classic structure, and liquidity pool concepts into
trade analysis, setup generation, and community content.

---

## Output Modes

Always check the user's request for mode intent. If ambiguous, ask.

### Mode A — Structured Analysis
Use for: personal research, trade planning, Discord analysis threads.
Format:
```
BIAS: [Bullish / Bearish / Neutral] — one-line reason
KEY LEVELS:
  - [Level] — [what it is: gamma wall / FVG / SSL / VWAP etc.]
SETUP:
  - Entry trigger: [specific condition]
  - Entry zone: [price or range]
  - Stop: [level + logic]
  - Target(s): [T1, T2 with reasoning]
  - Invalidation: [what kills the trade]
NARRATIVE: [2–4 sentences connecting the dots: structure → levels → catalyst]
```

### Mode B — Community Post (Futu NiuNiu / Discord)
Use for: 富途牛牛 posts, Discord announcements, recap messages.
Rules (non-negotiable):
- First-person, peer voice — never lecture. 没有爹味.
- Plain text, no markdown (no bold, no bullet symbols, no headers).
- Short sentences. Counterintuitive or punchy opener.
- Chinese by default for Futu posts. English or bilingual for Discord.
- Never say "大家" as an authority figure. Write as a fellow trader sharing a read.
- Do not give explicit buy/sell instructions. Frame as personal observation.

### Mode C — Intraday Recap
Use for: Discord bot automated recaps, EOD summaries.
Format: narrative paragraph(s), past tense, factual tone.
Cover: session open behavior, key level interactions, volume context, close structure.
Keep under 200 words unless asked for more.

---

## Framework Reference

### 1. ICT Concepts

**Liquidity Pools**
- **SSL (Sellside Liquidity)**: Below prior swing lows, equal lows, or obvious support. Stops cluster here. Price sweeps SSL to grab liquidity before reversing up.
- **BSL (Buyside Liquidity)**: Above prior swing highs, equal highs, or obvious resistance. Price sweeps BSL before reversing down.
- Key phrase: "smart money runs stops before the real move."

**Fair Value Gaps (FVG)**
- Three-candle pattern: gap between candle 1 high and candle 3 low (bullish FVG) or candle 1 low and candle 3 high (bearish FVG).
- Price typically returns to fill or partially fill FVGs.
- Unfilled FVGs near key structure = high-conviction entry zones.

**Displacement**
- Strong impulsive move away from a range, often leaving FVGs behind.
- Displacement + FVG retest = ICT entry model.
- Look for displacement on 5m/15m after liquidity sweep on higher TF.

**CISD (Change in State of Delivery)**
- Shift from bearish delivery to bullish (or vice versa).
- Confirmed by: displacement candle closing above/below prior structure + FVG formation.
- Higher-probability when occurs after SSL/BSL sweep.

**Market Structure**
- BOS (Break of Structure): continuation signal, same direction.
- CHoCH (Change of Character): reversal signal, opposite direction.
- Always read structure top-down: HTF bias first, LTF entry second.

---

### 2. GEX / Gamma Mechanics

**Core concept**: Market makers delta-hedge options exposure. Their hedging creates predictable price behavior near large gamma concentrations.

**Call Walls (positive gamma zones)**
- Large call OI at a strike = MM sells delta as price rises → acts as resistance.
- Price oscillates below call wall in high-GEX regimes. Hard to break through without catalyst.
- Above call wall: MM buys delta as price rises → can accelerate upside (gamma squeeze).

**Put Walls (negative gamma zones)**
- Large put OI = MM buys delta as price falls → acts as support.
- In negative GEX environments: MM sells delta as price falls → accelerates downside.

**Zero Gamma Line**
- Level where net gamma flips from positive to negative.
- Below zero gamma: volatility expands, moves accelerate.
- Above zero gamma: vol compression, mean reversion tendency.

**Key GEX Levels to Always Note**
- Call wall (resistance in positive GEX)
- Put wall (support in positive GEX)
- Zero gamma line (vol inflection)
- HVL (High Volume Level) — anchor for dealer positioning

**GEX + ICT Fusion**
- ICT liquidity sweeps are more likely to reverse AT gamma walls.
- FVG retests that align with gamma support = highest-conviction entries.
- Zero gamma crossovers often coincide with CHoCH or BOS on 15m.

---

### 3. Classic Price Action

**Structure**
- Higher highs + higher lows = uptrend. Lower highs + lower lows = downtrend.
- Ranges: price consolidates between clear high and low; trade the extremes or the breakout.

**Support / Resistance**
- Prior swing highs/lows, round numbers, daily/weekly opens.
- The more times a level is tested, the weaker it becomes (liquidity depletes).
- Fresh untested levels > repeatedly tested levels.

**Candle Patterns (context-dependent)**
- Rejection wicks at key levels: high probability reversal signal.
- Engulfing candles after liquidity sweep: entry trigger.
- Doji / indecision at structure: wait for confirmation.

**Volume**
- Volume spike on breakout = legitimate move.
- Low volume breakout = likely fake-out (especially in high-GEX regime).
- Volume dry-up at S/R = accumulation / distribution.

---

### 4. VWAP + Pre-Market Liquidity

**VWAP**
- Institutional average price benchmark. Price above VWAP = bullish intraday bias.
- VWAP reclaim (price drops below then reclaims): long setup trigger.
- VWAP rejection (price tests from below, fails): short bias.
- Use anchored VWAP from: session open, major swing pivots, earnings gaps.

**Pre-Market High / Low (PMH / PML)**
- PMH = buyside liquidity pool. Price often sweeps PMH in RTH open.
- PML = sellside liquidity pool. Sweep of PML followed by VWAP reclaim = long model.
- Gap fills: if RTH opens with gap vs prior close, fade-to-fill is common early session move.

**Opening Range (first 5–30 min)**
- ORH / ORL = intraday liquidity levels.
- Breakout of OR with volume = trend day signal.
- OR rejection + mean reversion = range day signal.
- ICT "kill zones": 9:30–10:00, 10:00–11:00, 2:00–3:00 EST are highest-probability windows.

---

## Analysis Workflow

Follow this top-down sequence for any analysis request:

1. **HTF Bias** (daily/4H): trend direction, major S/R, recent BOS/CHoCH
2. **GEX Context**: current gamma regime (positive/negative), key walls, zero gamma line
3. **Intraday Structure** (1H/15m): swing highs/lows, FVGs, displacement zones
4. **Liquidity Map**: where are the SSL/BSL pools? PMH/PML? VWAP?
5. **Trigger** (5m/1m): specific entry condition — liquidity sweep + FVG retest, or VWAP reclaim, etc.
6. **Confluence count**: more framework alignment = higher conviction

---

## Setup Generation Template

When generating a trade setup, always include:

| Field | What to specify |
|-------|----------------|
| Instrument | Ticker, expiry if options |
| Bias | Direction + top-down reason |
| Entry trigger | Exact condition (e.g., "5m close above FVG after SSL sweep") |
| Entry zone | Price range |
| Stop | Level + why it invalidates thesis |
| T1 | First target (nearest liquidity / gamma wall) |
| T2 | Extension target (next major level) |
| Invalidation | What price action kills the trade before entry |
| Timeframe | Setup validity window |
| Conviction | Low / Medium / High + reason |

---

## Content Voice Guide (Futu / Discord)

**DO**
- Open with the trade result or the counterintuitive fact: "今天开盘扫了低点，然后直接拉回来了。"
- Share your read as a peer: "我自己的理解是..."
- Acknowledge uncertainty: "这个位置不确定，看看能不能守住"
- Use specifics: exact levels, exact time, exact pattern

**DON'T**
- "大家注意了..." (lecturing opener)
- "建议大家..." (giving advice)
- "这是必涨信号" (overconfident calls)
- Markdown formatting in plain-text channels
- Wall of text — break into short paragraphs

**Bilingual note**: For Discord, English-first with Chinese parentheticals for key terms is fine. For Futu, Chinese-first.

---

## Quick Reference: Level Priority Stack

When multiple levels cluster, rank them:
1. **GEX gamma walls** (most mechanically enforced by MM hedging)
2. **Daily/weekly S/R** (highest HTF significance)
3. **SSL/BSL pools** (liquidity magnets)
4. **FVGs** (retest zones)
5. **VWAP / PMH / PML** (intraday anchors)
6. **Classic S/R / round numbers** (crowd psychology)

Confluence of 3+ = high-conviction level.

---

## Edge Cases

- **Low GEX / OPEX week**: gamma walls less sticky, expect wider ranges and faster moves through levels. Weight ICT structure more heavily.
- **News/Fed days**: framework is secondary to event risk. Note setup but reduce size or sit out.
- **Pre-market gaps**: recalibrate PMH/PML, check if gap aligns with FVG or gamma wall.
- **0DTE context**: gamma effects are maximally strong. Call/put walls act as near-hard ceilings/floors until they don't — watch for acceleration through them as sign of breakdown.
