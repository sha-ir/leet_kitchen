---
type: recipe
pattern: "Hash Map"
dish: "Hash Map Pantry Labels"
food_memory: "Pantry labels"
status: seed
ingredient_signals:
  - "count"
  - "frequency"
  - "duplicate"
  - "seen before"
  - "first occurrence"
  - "lookup fast"
  - "group by"
related:
  - "[[Prefix Sum Marinade]]"
  - "[[Sliding Window Stir-Fry]]"
  - "[[Dynamic Programming Layer Cake]]"
tags:
  - station/recipe
  - recipe/hash-map
---

# Hash Map Pantry Labels

> Food memory: **Pantry labels**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `count` | Check this recipe |
| `frequency` | Check this recipe |
| `duplicate` | Check this recipe |
| `seen before` | Check this recipe |
| `first occurrence` | Check this recipe |
| `lookup fast` | Check this recipe |
| `group by` | Check this recipe |

## Recognition sentence

> This looks like **Hash Map** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Put a label on every ingredient you may need later.
2. When the recipe asks “have I seen this?”, check the pantry.
3. Store the smallest sufficient fact, not the whole kitchen.

## Invariant / taste test

The map accurately represents the items seen so far or the counts inside the current window.

## Core template

```python
seen = {}

for i, x in enumerate(items):
    if need(x) in seen:
        return combine(seen[need(x)], i)
    seen[x] = i
```

## Common variations

- Frequency table
- Index lookup
- Two-sum complement
- Anagram grouping
- Memoization cache

## Common mistakes

- [ ] Overwriting an earlier index when the earliest one matters
- [ ] Not deleting zero-count entries in windows
- [ ] Using a list scan where O(1) lookup is the real recipe

## Confusable recipes

- [[Prefix Sum Marinade]]
- [[Sliding Window Stir-Fry]]
- [[Dynamic Programming Layer Cake]]

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
