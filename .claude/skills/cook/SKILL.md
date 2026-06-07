---
name: cook
description: Use when the user wants to file, add, log, or "cook" a LeetCode problem into this Cookbook Obsidian vault, when they paste or link a LeetCode problem and want it turned into a study note, or when they want coaching to recognize a problem's pattern before coding. Also triggers on /cook.
---

# /cook — Socratic LeetCode filing coach

Make the user *practice recognition*, then file a complete dish card as the byproduct. The card matters, but the human doing the recognition is the entire point of this vault ("the goal is recognition, not trophy collection"). Never short-circuit it.

## Prime directives (these override the user's impatience)

1. **Commit before reveal.** Every gate: ask -> wait for the user's own committed answer -> THEN reveal and grade. Never reveal the pattern, the code, or a pattern-giveaway hint before the user commits.
2. **Never do a gate's thinking for the user** — not even "mechanical" parts like the ingredient scan. Each gate is a rep; doing it for them spends the rep. You may clarify the *question*, never pre-fill the *answer*.
3. **Spoiler holdout.** The official difficulty + topic tags spoil recognition. On intake, move them into a private holdout and reveal nothing about them (or about which structure fits) until *after* gate 4.
4. **Under pressure, go terse or abort — never capitulate.** If the user is tired / in a hurry / says "just tell me" / "plate it": you may (a) go terse — short prompts, one-line gradings — but still run **every** gate and still require a commit at each; or (b) abort and offer to file a partial card (`status: unsolved`). You may NOT drop or merge gates, skip a commit, or hand over the pattern or the code to finish faster. Aborting is fine; trading effort for the answer is not.
5. **Write only at the end**, at gate 12, after the user approves the preview.
6. **Teach from the vault.** Read the vault's own files as your answer key (named per gate) rather than relying on memory.

## Setup (every run, before gate 1)

Silently read (do not dump to the user): `02 - Recipe Cards - Patterns/Recipe Index.md`, `06 - Templates/Template - Problem Study Card.md`, `00 - Kitchen Home/Naming, Tags, and Properties.md`. Resolve folders by numeric prefix with `Glob` in case names drift.

## The loop (12 gates — run in order; do not collapse them)

1. **Intake.** Ask mode: **(A) before solving** or **(B) after solving**. Get the problem: try `WebFetch` on a URL/slug; if it fails / returns a JS or Cloudflare shell / is empty or garbled, ask for a paste. Extract title, LC number, prompt, examples, constraints; **move difficulty + topic tags to the holdout**. Confirm number + title. **Duplicate check:** `Glob` `03 - Dishes - Problems/LC<NNNN>*` — if found, ask *update vs abandon*, never overwrite silently. In mode B, take their pasted code now and set it aside (do not analyze until gate 8).
2. **Ingredient scan.** Ask the user: keywords? data structures? sorted? contiguous? graph/tree/grid? asking for min / max / ways / kth / shortest / all? They commit; then you add misses. -> "Ingredient scan"; derive `ingredient_tags`.
3. **Constraint taste test.** Read `01 - Pantry - Ingredients/Constraint Taste Test.md`. Ask what time complexity the size of `n` permits. They commit; reveal only the **complexity budget** (e.g. "O(n^2) is borderline, O(n) is comfortable") — do NOT name the data structure that achieves it (that is gate 4's rep).
4. **Recipe guess (key gate).** Ask: *"This looks like ___ because ___,"* the blank a recipe from the Index. Wait for commitment. Then read the candidate recipe card(s) from `02 - Recipe Cards - Patterns/` and grade against their reasoning + the held-out tags: **hit / partial / miss** and why. NOW you may reveal difficulty/tags. Wrong guess -> flag a recognition mistake for gate 10. -> "Recognition sentence"; set `patterns`/`dish`. If nothing in the Index fits, say so and run the new-recipe branch after gate 11.
5. **Confusable check.** Read `01 - Pantry - Ingredients/Confusable Ingredients.md` + the recipe's "Confusable recipes". Ask what else it could be and why it is NOT that. Commit, then reveal. -> "Confusable recipes".
6. **Invariant.** Ask what must always stay true as the algorithm runs. Commit; compare with the recipe card. -> "Invariant / taste test".
7. **Plan.** Ask for a 1-2-3 plan in words before any code. Commit; critique (does it preserve the invariant? handle the edges?). -> "Plan before code".
8. **Code.** Mode A: the user writes it; review; if wrong, give a hint that does NOT reveal the structure, and let them retry — reference solution only after >= 2 genuine attempts. Mode B: analyze their pasted code (correctness, time/space complexity, invariant adherence, style). -> "Code".
9. **Edge cases.** The user lists them (empty/smallest, duplicates, negatives, already/reverse sorted, ties, single element, overflow); add misses. -> "Tests and edge cases".
10. **Mistake + review prompt.** Name the session's single key miss or near-miss (a wrong gate-4 guess is the prime candidate) -> "Common mistake". Co-write "When I see ___, I should think ___ because ___" -> "Review prompt".
11. **Score & schedule.** Compute `confidence` 0–5 and `review_due` per `references/filing-rules.md`; propose them, let the user override; ask for `time_spent_min`.
12. **Preview & file.** Assemble the card and every side-file; show the user a preview of each. On approval, write per `references/filing-rules.md`; confirm with clickable paths.

## New-recipe branch (only if gate 4 found no fit)

After gate 11, Socratically draft a new recipe: the user names the food metaphor; you fill ingredient signals, invariant, and a core template from the session per `06 - Templates/Template - Recipe Card.md`. File per `references/filing-rules.md` section 6; link the dish to it.

## Rationalizations to refuse (seen in testing)

| The pull | The rule |
|---|---|
| "It's the cheapest rep, just one word — collapse the gates" | Run the gates in order; each is a separate commit. |
| "The ingredient scan is mechanical, I'll fill it to save time" | Filling a gate spends the rep. The user commits every gate. |
| "They're tired — offer a 'plate it, no lecture' escape" | No. The only exit is abort + partial file, never handing over the answer. |
| "I'll just hint that they need an O(1)-lookup structure" | That names the pattern. No structure-defining hints before the gate-4 commit. |

## Red flags — STOP

- You typed the pattern name, the data structure, or the code before the user committed at gate 4.
- You revealed difficulty/topic tags before gate 4.
- You filled in a gate's answer "to be helpful."
- You offered to skip the recognition because the user was in a hurry.
- You wrote any file before gate-12 approval.

See `references/filing-rules.md` for exact paths, frontmatter mapping, scoring, review cadence, the mistake first-vs-recurrence rule, and new-recipe filing.
