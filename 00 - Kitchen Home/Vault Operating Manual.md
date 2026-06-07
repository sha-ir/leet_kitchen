---
type: guide
tags:
  - cookbook/guide
  - station/kitchen
---

# Vault Operating Manual

## Folder roles

- `00 - Kitchen Home`: maps, rules, and process notes.
- `01 - Pantry - Ingredients`: prompt signals and constraint clues.
- `02 - Recipe Cards - Patterns`: one note per algorithmic pattern.
- `03 - Dishes - Problems`: one note per problem solved.
- `04 - Meal Plans - Practice`: study schedules and rotation menus.
- `05 - Tasting Room - Review`: mistakes, invariants, spaced repetition, and recognition drills.
- `06 - Templates`: copy or insert these when creating notes.
- `07 - Dashboards`: Dataview queries and manual indexes.
- `99 - Source`: the original guide and any future source material.

## How to add a new solved problem

1. Duplicate [[Template - Problem Study Card]].
2. Name the note `LC0000 - Problem Name` if you know the number, otherwise `Problem - Name`.
3. Fill the properties at the top.
4. Link the primary recipe, for example `[[Sliding Window Stir-Fry]]`.
5. Add at least one invariant and one mistake.
6. Set `review_due` to tomorrow.

## How to add a new recipe

1. Duplicate [[Template - Recipe Card]].
2. Give it a food-native name.
3. Add ingredient signals, a core invariant, and a template.
4. Link to confusable recipes.
5. Add 3 practice slots: easy, medium, stress-test.

## Weekly maintenance

- Move unsorted notes out of `00 - Inbox` if you add one later.
- Review due problem cards in [[Review Dashboard]].
- Promote repeated mistakes into [[Mistake Pantry]].
- Add new invariants to [[Invariant Library]].
