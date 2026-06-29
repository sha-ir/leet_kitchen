# Filing rules — what to write, where (step 5 + step 8)

All writes happen at **step 8, after the user approves the preview**. Resolve
folders by numeric prefix with `Glob` (names may drift). Use today's date for
date fields, formatted `YYYY-MM-DD`.

## 1. Dish card → `03 - Dishes - Problems/LC<NNNN> - <Title>.md`

Zero-pad the number to 4 digits (`LC0150 - Evaluate Reverse Polish Notation`). If
there is no number, use `Problem - <Title>`. Start from
`06 - Templates/Template - Problem Study Card.md` and fill **every** section.

Frontmatter mapping:

| property | value |
|---|---|
| `type` | `problem` |
| `leetcode_id` | the number, or blank |
| `source` | the URL (build the canonical `https://leetcode.com/problems/<slug>/` if you know the slug), or blank |
| `difficulty` | `easy` / `medium` / `hard` |
| `status` | `solved` (these are solved by definition) |
| `patterns` | `- "[[<Recipe>]]"` from the confirm menu; `[]` if the user chose "no named recipe" |
| `dish` | the recipe's food-memory name (from the recipe card), or blank if no recipe |
| `ingredient_tags` | lowercase-hyphenated signals (e.g. `set-membership`, `range-1-to-n`, `array-construction`) |
| `solved_on` | today |
| `review_due` | per §3 |
| `confidence` | 0–5 per §2 |
| `time_spent_min` | the number the user gave, or blank |
| `mistakes` | the mistake text if the user named one, else blank |
| `tags` | `station/dish`, `recipe/<slug>` (if a recipe; slug = recipe card's `pattern` lowercased, spaces→hyphens), `difficulty/<level>` |

Body sections (from the template), filled with the **correct** content so the card
is a good study artifact: Problem (link), Ingredient scan, **Recognition sentence**
(the food image + why this recipe), **Confusable recipes**, **Recipe** (the
exaggerated motion — keep it consistent with the palace), Invariant / taste test,
Plan before code, **Code** (the user's actual solution, verbatim), Tests and edge
cases, Common mistake, Review prompt.

**Honesty convention:** the body holds correct content; any real miss the user
reports lives in "Common mistake" and lowers `confidence`. If the solve was clean,
say so plainly — do not invent a mistake.

## 2. Scoring (confidence 0–5) — propose; the user may override

These problems are already solved, so most score high. Start at 5 and subtract for
honesty signals the user volunteers:

- −1 if the user says they needed a reference / hint / a long struggle.
- −1 if there was a real bug they had to fix.
- −1 if they say they don't really understand why it works.
- Floor at 0. If the user reports nothing, 5 is fine.

## 3. Review cadence → set `review_due` (do NOT edit the Spaced Review Queue file)

Anchor on `solved_on`:
- confidence ≤ 2 → **+1 day**
- confidence 3–4 → **+1 day**
- confidence 5 → **+3 days**

The Review Dashboard surfaces due cards from this property.

## 4. Mistakes (only if the user reports one)

Follow the vault rule, same as `/cook`:
- **First occurrence:** add `- [ ] <mistake>` under the matching recipe heading in
  `05 - Tasting Room - Review/Mistake Pantry.md` (add `## <Recipe>` if absent), and
  set the dish card `mistakes` to the text.
- **Recurrence** (already listed under that recipe): promote to
  `05 - Tasting Room - Review/Mistake - <Short Name>.md` from
  `06 - Templates/Template - Mistake Note.md`, link it from the card and the Pantry.

If solves were clean (common in this skill), make **no** Mistake Pantry edits.

## 5. Meal note → `04 - Meal Plans - Practice/Meal - <YYYY-MM-DD> - <short label>.md`

This is the session hub. One file per feast. Frontmatter:

```yaml
---
type: meal
date: <YYYY-MM-DD>
courses: <N>
dishes: <count>
visualization: "[[<palace-file>.html]]"
tags:
  - station/tasting
  - cookbook/meal
---
```

Body: a short intro, then the **mnemonic poem** (quoted), then one section per
meal/room with a small table (Dish link · exaggerated image · motion), then a
"Recipes exercised" list. Keep it skimmable — it is the text mirror of the palace.

## 6. Palace file → `04 - Meal Plans - Practice/<palace-file>.html`

Name it memorably and dated, e.g. `palate-palace-<YYYY-MM-DD>.html` or a themed
name. Self-contained single file (see `palace-design.md`). The meal note's
`visualization` frontmatter and an in-body link point at it.

## 7. Problem Cards Index → `03 - Dishes - Problems/Problem Cards Index.md`

Append, under `## Manual index`, a dated block linking the meal note and every
dish grouped by meal:

```markdown
### Feast — <YYYY-MM-DD> (see [[Meal - <YYYY-MM-DD> - <label>]])

<Meal 1 name>:
- [[LC#### - Title]]
...
```

## 8. New recipe (rare — only if a problem fits nothing in the Index)

If a dish needs a pattern the Index lacks, create
`02 - Recipe Cards - Patterns/<Food-Native Name>.md` from
`06 - Templates/Template - Recipe Card.md` (fill `pattern`, `dish`, `food_memory`,
`ingredient_signals`, recognition sentence, mental recipe, invariant, a core
template; `status: draft`), append it to the Recipe Index, and link the dish's
`patterns` to it. Most batches won't need this — prefer an honest "no named
recipe" over a thin invented one.
