---
name: palate-palace
description: >-
  Build a food-themed MEMORY PALACE from a BATCH of already-solved LeetCode
  problems so the user remembers HOW they solved them. Reach for this whenever
  someone has several solved problems (pasted with code, or as links) and wants
  to organize, consolidate, retain, or "not forget" them — especially when they
  mention a memory palace, grouping problems as "meals" / courses / a feast,
  visualizing solutions, mnemonics, or building something to review later. This
  is the POST-solve consolidation companion to /cook (which coaches recognition
  on a single, often-unsolved problem); use palate-palace instead when the
  solving is already done and the goal is vivid, lasting recall across a SET.
  Produces filed dish cards, an exaggerated interactive HTML palace (themed
  meal-rooms with flip-cards per dish), and a rhyming mnemonic poem. Also
  triggers on /palate-palace and phrasings like "cook these as a feast", "turn
  my solved problems into a memory palace", "help me remember this batch",
  "make these stick".
---

# palate-palace — the memory-palace feast

The user has **already solved** a batch of problems. They do not need a
recognition coach; they need to *not forget what they just learned*. Your job is
to turn the batch into a **memory palace**: a vivid, spatial, recitable artifact
that encodes **how each problem was solved** so it survives in long-term memory.

The pun in the name is the whole idea: a **palate** (taste, food) built into a
**palace** (the method of loci). You ride the vault's existing food metaphor all
the way into memory.

This is the sibling of `/cook`. Know the difference cold, because it changes
everything you do:

| | `/cook` (v1) | `palate-palace` (v2) |
|---|---|---|
| Input | one problem, often unsolved | a **batch** of **solved** problems |
| Goal | practice **recognition** (the rep) | **consolidate** so it's not forgotten |
| Menus | hide the answer; the click is a graded rep | **confirm** the pattern fast; nothing is hidden |
| Spoilers | difficulty/tags held out until step 3 | reveal everything freely — no rep to protect |
| Output | one study card | cards **+ memory-palace HTML + mnemonic poem** |

If the user is still solving, or wants to be quizzed on a single problem, you are
in the wrong skill — that is `/cook`. Here, the solving is done.

## Why a memory palace works — the load-bearing ideas

Do not treat these as decoration. They are *why* the artifact works; if you skip
them you produce a pretty page that doesn't stick.

1. **Spatial loci.** Memory is dramatically better at *places* than at lists.
   Group the batch into themed **meals** (breakfast/lunch/dinner, or N courses),
   and present each meal as a **room** the user walks through in order. The walk
   *is* the retrieval path: room → station → dish.

2. **Exaggeration and multisensory imagery.** Bland images evaporate; absurd,
   sensory, slightly-too-much images lodge. For each problem invent **one
   exaggerated edible image** — steam, mess, motion, scale. Lean into it.

3. **Encode the MOTION, not the surface.** The image must hook the **solution's
   key mechanic** (the move that makes it work), not the problem's prose. The
   user wants to recall *how they solved it*. "Push every number, pop the ones
   off the ticket" beats "a stack problem". Always pair the image with a
   one-line **motion** in plain food terms.

4. **A recitable thread.** A short **rhyming poem** binds the loci into one
   object the user can say out loud. Rhyme and meter are themselves mnemonic —
   the sound constrains and cues the next line. One line per dish, in walk order.

5. **Consistency with the vault.** Reuse the existing recipe cards and food
   names (Recipe Index, the recipe dishes). Encoding into an *existing* schema is
   stronger than inventing a parallel one each time.

6. **Confirm, don't coach.** They already solved these. Re-running hidden
   recognition reps would be busywork and would annoy. Offer **recommended-first**
   confirmation menus, reveal difficulty/tags freely, and move on. (Honoring the
   user's chosen label still matters — they pick, you don't auto-file.)

## Setup (every run, before step 1)

Silently read (resolve folders by numeric prefix with `Glob` in case names
drift; do not dump these to the user):

- `02 - Recipe Cards - Patterns/Recipe Index.md` — the menu of recipes to assign.
- `01 - Pantry - Ingredients/Confusable Ingredients.md` — for honest alternative
  options in the confirm menus.
- `06 - Templates/Template - Problem Study Card.md` — the dish-card skeleton.
- `00 - Kitchen Home/Naming, Tags, and Properties.md` — naming + frontmatter.
- The specific recipe card(s) you intend to assign, before you write their cards.

## Non-interactive use

The menus below (meal grouping, pattern confirmation, the step-8 approval) assume a
live user — that confirmation is part of the value. But if you are running **without
an interactive user** (headless, a pipeline, or as a subagent), do not stall waiting
for clicks: make the best-judgment choice the menu would have offered, proceed, and
produce every final artifact directly. Never skip an *artifact* for lack of a user;
only skip the *asking*.

## The flow (run in order)

### 1. Intake the batch
Collect the solved problems. They may be pasted (prompt + code) or links — try
`WebFetch` on a link, and if it returns a JS/Cloudflare shell or garbled text,
ask for a paste. For each, extract title, LC number, prompt, examples, and the
**user's code**. Confirm the count and the list. Duplicate check with `Glob`
`03 - Dishes - Problems/LC<NNNN>*`; if a card exists, ask update-or-skip per
problem (never overwrite silently).

### 2. Plate the meals (build the rooms)
Cluster the batch into themed **meals** — usually by shared pattern, sometimes by
difficulty or topic. A meal is a *room* in the palace, so give it a vivid room
name and a one-line theme (e.g. "The Pantry of Labels — everything here is
'have I seen this number?'"). Propose the grouping to the user (a quick menu or a
short confirm). Meals of ~3 dishes read best; don't force evenness.

### 3. Confirm the patterns (batched menus)
For each problem propose its recipe from the Recipe Index, **recommended option
first**, plus 2–3 genuine alternatives (use Confusable Ingredients) and the
auto-added "Other" for free input. Batch by meal (`AskUserQuestion` allows ≤4
questions/call). Reveal difficulty and tags freely. Some easy problems map to
**no named recipe** (pure simulation / a one-pass counter) — offer that honestly
rather than forcing a pattern. The user's click sets the card's `patterns`.

### 4. Craft the imagery (the heart)
For every dish, write: an **exaggerated edible image** (a name + a vivid one- or
two-sentence picture) and the **motion** in food terms (the mechanic to recall).
See `references/imagery-craft.md` for the technique, dials, and worked examples.
This is where the skill earns its keep — spend real effort here.

### 5. File the dish cards
Write one complete dish card per problem per `references/filing-rules.md`
(template, frontmatter, scoring, review cadence). The body holds the *correct*
content (a good study artifact); the imagery lives in the Recognition/Recipe
sections so the card and the palace agree.

### 6. Build the palace (HTML)
Produce one self-contained HTML file — the walk-through palace — per
`references/palace-design.md`. It must be genuinely well-designed (invoke the
`frontend-design` skill's principles): distinctive type, per-room palettes,
atmosphere, and **flip-cards** whose front is the exaggerated image + mnemonic
and whose back is the motion + the user's **actual code**.

### 7. Write the mnemonic poem
Compose the short rhyming poem per `references/poem-craft.md` — one stanza per
room, one line per dish in walk order, each line embedding that dish's cue, plus
a closing couplet. Place it in both the palace (a styled "story" section) and the
meal note.

### 8. Assemble, preview, file, open
Create the **meal note** (links every dish + the poem + the palace) and append to
the Problem Cards Index, per `references/filing-rules.md`. Show the user a compact
preview of everything (cards table, poem, palace concept). Ask **File it / Edit a
section / Abort & file partial**. Only write the vault files after approval. Then
offer to open the palace in the browser.

## References

- `references/filing-rules.md` — exact paths, frontmatter mapping, scoring,
  review cadence, the meal note, index updates.
- `references/imagery-craft.md` — how to invent exaggerated, motion-true edible
  images; dials and worked examples.
- `references/palace-design.md` — the HTML palace spec: structure, aesthetics,
  flip-card anatomy, interactivity, where to save.
- `references/poem-craft.md` — the mnemonic-poem recipe: structure, rhyme, the
  one-line-per-dish rule, examples.

## Rationalizations to refuse

| The pull | The rule |
|---|---|
| "Just file the cards, skip the palace/poem" | The palace + poem are the point — they're the memory layer. Cards alone is `/cook`'s job. |
| "Make every image a literal restatement of the problem" | Encode the **solution motion**, exaggerated. Literal = forgettable. |
| "Hide the pattern so they guess it" | That's a v1 rep. Here they solved it; **confirm**, don't quiz. |
| "One big list of 9 dishes is simpler than rooms" | Loci need *places*. Group into meal-rooms or the palace doesn't work as memory. |
| "Write the vault files now, preview later" | Preview and get approval first (step 8). The user curates their own palace. |
