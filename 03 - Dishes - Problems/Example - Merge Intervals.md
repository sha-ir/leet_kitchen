---
type: problem
status: solved
patterns:
  - "[[Intervals Lasagna Sheets]]"
dish: Intervals Lasagna Sheets
ingredient_tags:
  - overlap
  - sorted
  - ranges
difficulty: medium
solved_on:
review_due:
confidence: 4
time_spent_min:
tags:
  - station/dish
  - recipe/intervals
  - difficulty/medium
---

# Example - Merge Intervals

## Recognition sentence

This looks like [[Intervals Lasagna Sheets]] because the prompt gives overlapping ranges and asks for merged coverage.

## Ingredients

- Intervals
- Overlap
- Sort by start
- Merge sheets that touch or overlap depending on problem definition

## Recipe

Sort by start. Keep a merged list. If the next sheet overlaps the last sheet, extend the end; otherwise start a new sheet.

## Invariant / taste test

`merged` is sorted and contains no unresolved overlaps.

## Common mistake

Forgetting to sort by start before merging.
