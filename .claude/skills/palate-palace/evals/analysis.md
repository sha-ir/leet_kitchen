# palate-palace — iteration-1 analysis

**Model:** claude-opus-4-8 (1M) subagents. 3 evals × {with_skill, without_skill}, 1 run each.

## Headline

| Metric | With skill | Baseline (no skill) | Delta |
|---|---|---|---|
| Pass rate | **100% ± 0%** | 56% ± 29% | **+0.44** |
| Time | 365.7s | 172.2s | +193.5s (2.1×) |
| Tokens | 61.8k | 29.3k | +32.5k (2.1×) |

Per-eval pass (of 9 assertions):

| Eval (prompt vagueness) | With skill | Baseline |
|---|---|---|
| eval-0 "build a memory palace, grouped as meals" (explicit) | 9/9 | 6/9 |
| eval-1 "something visual, they never stick" (vague) | 9/9 | **2/9** |
| eval-2 "a little themed feast lol" (casual) | 9/9 | 7/9 |

## The real story: consistency, not just lift

The baseline is *prompt-dependent*. When the user spells out "memory palace, grouped
as meals" (eval-0) the model improvises a decent bundle on its own (6/9). But when the
prompt is vague — "something visual I can review" (eval-1) — the baseline collapsed to
**2/9**: it produced a single HTML board with **no dish cards, no poem file, no rooms,
no recipe mapping, and no code preserved in cards**. The skill removes that variance:
9/9 on all three prompts regardless of how much framing the user supplies. That is the
core value — the user gets the same complete, vault-correct artifact every time.

## What the skill reliably added over baseline

- **Vault filing discipline** — LC-numbered dish cards under `03 - Dishes - Problems/`,
  a meal-note hub, index append, correct frontmatter (status/confidence/review_due).
  Baselines often invented ad-hoc structures (`Diner Menu.md`, a lone HTML board).
- **Loci as rooms** — every with-skill run grouped dishes into named themed rooms; the
  vaguest baseline produced none.
- **Recipe mapping to the real vault** — `[[Hash Map Pantry Labels]]`,
  `[[Stack Pancake Stack]]`, `[[Two Pointers Sandwich Squeeze]]`, with **honest
  "no named recipe"** for XOR (Single Number) and the running-min scan (Best Time).
- **Poem mirrored in both palace and meal note** (baselines sometimes split it into a
  stray file or omitted it).
- **Graceful non-interactive degradation** — with no user to click, subagents made
  sensible filing calls; notably eval-1 set `confidence: 3` (not 5) *because* the user
  said these don't stick, shortening the review interval. That nuance came from the
  skill's scoring guidance, not the prompt.

## Non-discriminating assertions (noted, kept for completeness)

- "An HTML file is produced" and "each dish has an image + mnemonic" passed for *both*
  configs — every run makes an HTML page with some imagery. These don't separate skill
  from baseline; the discriminating assertions are filing (cards/index/meal note),
  room grouping, poem-in-markdown, recipe mapping, and code-in-cards.

## Cost tradeoff

The skill roughly doubles time and tokens. This is intrinsic: it files N cards + an
index + a meal note + a bespoke palace + a poem, versus the baseline's frequent
single-artifact shortcut. For a study artifact you build occasionally and keep
forever, the cost is justified. A bundled HTML template would cut tokens but was
**deliberately not added** — varied, distinctive palace design is the feature, and a
fixed scaffold would homogenize it toward generic output.

## Decision

No iteration-2. With-skill is 100% with strong qualitative output; the only delta is
cost, which is the price of the thoroughness the skill exists to guarantee. One safe
robustness note ("Non-interactive use") was added to SKILL.md, generalized from all
three subagents independently handling the no-user case.
