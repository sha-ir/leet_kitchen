---
type: recipe
pattern: "Intervals"
dish: "Intervals Lasagna Sheets"
food_memory: "Lasagna sheets"
status: seed
ingredient_signals:
  - "meeting times"
  - "overlapping ranges"
  - "merge intervals"
  - "insert interval"
  - "schedule"
  - "rooms"
related:
  - "[[Greedy Chefs Instinct]]"
  - "[[Two Pointers Sandwich Squeeze]]"
  - "[[Heap Buffet Priority Line]]"
tags:
  - station/recipe
  - recipe/intervals
---

# Intervals Lasagna Sheets

> Food memory: **Lasagna sheets**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `meeting times` | Check this recipe |
| `overlapping ranges` | Check this recipe |
| `merge intervals` | Check this recipe |
| `insert interval` | Check this recipe |
| `schedule` | Check this recipe |
| `rooms` | Check this recipe |

## Recognition sentence

> This looks like **Intervals** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Lay sheets in sorted order.
2. Merge sheets that overlap.
3. When sheets do not touch, start a new layer.

## Invariant / taste test

Processed intervals are sorted and merged with no unresolved overlaps.

## Core template

```python
intervals.sort(key=lambda x: x[0])
merged = []

for start, end in intervals:
    if not merged or merged[-1][1] < start:
        merged.append([start, end])
    else:
        merged[-1][1] = max(merged[-1][1], end)

return merged
```

## Common variations

- Merge intervals
- Insert interval
- Meeting rooms
- Sweep line
- Non-overlapping intervals

## Common mistakes

- [ ] Forgetting to sort first
- [ ] Using < vs <= incorrectly for touching intervals
- [ ] Losing the current active interval

## Confusable recipes

- [[Greedy Chefs Instinct]]
- [[Two Pointers Sandwich Squeeze]]
- [[Heap Buffet Priority Line]]

## Practice menu

Use [[Daily Consumption Plan]]: one easy to learn the recipe, one medium to apply it, one medium/hard to stress-test it.

| Slot | Problem | Done | Notes |
|---|---|---|---|
| Learn |  | [ ] |  |
| Apply |  | [ ] |  |
| Stress-test |  | [ ] |  |

## Links

- [[Master Recipe Table]]
- [[Ingredient Glossary]]
- [[Invariant Library]]
- [[Mistake Pantry]]
