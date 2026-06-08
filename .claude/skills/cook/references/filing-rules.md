# Filing rules (used at steps 3, 7, 8)

All writes happen at step 8 after the user approves the preview. Resolve folders by numeric prefix with `Glob`. Use today's date for date fields, formatted `YYYY-MM-DD`.

## 1. Dish card -> `03 - Dishes - Problems/LC<NNNN> - <Title>.md`

- Filename: zero-pad the number to 4 digits, e.g. `LC0001 - Two Sum`. If there is no number, use `Problem - <Title>`.
- Start from `06 - Templates/Template - Problem Study Card.md` and fill every section.

Frontmatter mapping:

| property | value |
|---|---|
| `type` | `problem` |
| `leetcode_id` | the number, or blank |
| `source` | the URL, or blank |
| `difficulty` | `easy` / `medium` / `hard` from the held-out answer key |
| `status` | `solved`, or `unsolved` if abandoned |
| `patterns` | `- "[[<Recipe>]]"` (the confirmed recipe; multiple allowed) |
| `dish` | the recipe's food-memory name (from the recipe card / Recipe Index) |
| `ingredient_tags` | lowercase hyphenated tags from the step-2 scan (e.g. `contiguous`, `no-duplicates`, `longest`) |
| `solved_on` | today's date |
| `review_due` | per section 4 |
| `confidence` | 0–5 per section 3 |
| `time_spent_min` | the number the user gave |
| `mistakes` | the mistake text, or `- "[[Mistake - <Name>]]"` if promoted (section 5) |
| `tags` | `station/dish`, `recipe/<slug>`, `difficulty/<level>` (slug = the recipe card's `pattern` field, lowercased, spaces -> hyphens, e.g. `Sliding Window` -> `sliding-window`) |

Body sections (from the template), filled with the **agreed/correct** content: Problem (link), Ingredient scan, Recognition sentence, Confusable recipes, Recipe, Invariant / taste test, Plan before code, Code, Tests and edge cases, Common mistake, Review prompt.

**Honesty convention:** the body holds the correct content (a good study artifact); the user's misses live in "Common mistake" and are reflected in `confidence`.

## 2. Problem Cards Index -> `03 - Dishes - Problems/Problem Cards Index.md`

Append one line under the `## Manual index` heading:
`- [[LC<NNNN> - <Title>]]`

## 3. Scoring (confidence 0–5) — propose, the user can override

- Start at 5.
- Recipe guess (step 3) wrong -> cap the score at **2**.
- −1 for a wrong invariant (step 4).
- −1 for buggy code (mode A: did not work / needed the reference; mode B: had a real bug).
- −1 for badly-incomplete edge cases (step 6).
- Floor at 0.

## 4. Review cadence -> set `review_due` (do NOT edit the Spaced Review Queue file)

Anchor on `solved_on`:
- confidence <= 2 -> **+1 day**.
- confidence 3–4 -> **+1 day** ("Leftovers").
- confidence 5 -> **+3 days** ("Second taste").

The Review Dashboard surfaces due cards from this property; the Spaced Review Queue note is a fixed cadence reference, not a per-card list.

## 5. Mistakes (step 7) — follow the vault rule

- **First occurrence:** add `- [ ] <mistake>` under the matching recipe heading in `05 - Tasting Room - Review/Mistake Pantry.md`. Set the dish card `mistakes` to the mistake text. If the recipe has no section yet in the Pantry, add `## <Recipe>` then the checkbox.
- **Recurrence** (the same or very similar mistake already listed under that recipe): promote to `05 - Tasting Room - Review/Mistake - <Short Name>.md` from `06 - Templates/Template - Mistake Note.md` (`pattern: "[[<Recipe>]]"`, `first_seen` = the earlier date if known else today, `last_seen` = today, `review_due` = +1 day). Link it from the dish card `mistakes` (`- "[[Mistake - <Short Name>]]"`) and add a link under the Pantry checkbox.

## 6. New recipe (only if step 3 found no fit)

- Create `02 - Recipe Cards - Patterns/<Food-Native Name>.md` from `06 - Templates/Template - Recipe Card.md`: fill `pattern`, `dish`, `food_memory`, `ingredient_signals`, the recognition sentence, the mental recipe, the invariant, and a core template from the session. Set `status: draft`.
- Append to `02 - Recipe Cards - Patterns/Recipe Index.md`: `- [[<Food-Native Name>]] — <food memory>`.
- The dish card's `patterns` links to this new recipe.
