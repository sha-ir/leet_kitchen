---
type: recipe
pattern: "Binary Search"
dish: "Binary Search Taste Test"
food_memory: "Taste-test adjustment"
status: seed
ingredient_signals:
  - "sorted"
  - "smallest valid answer"
  - "minimum possible answer"
  - "maximum possible answer"
  - "can we do x"
  - "monotonic"
related:
  - "[[Two Pointers Sandwich Squeeze]]"
  - "[[Greedy Chefs Instinct]]"
  - "[[Heap Buffet Priority Line]]"
tags:
  - station/recipe
  - recipe/binary-search
---

# Binary Search Taste Test

> Food memory: **Taste-test adjustment**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `sorted` | Check this recipe |
| `smallest valid answer` | Check this recipe |
| `minimum possible answer` | Check this recipe |
| `maximum possible answer` | Check this recipe |
| `can we do x` | Check this recipe |
| `monotonic` | Check this recipe |

## Recognition sentence

> This looks like **Binary Search** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Try the middle amount.
2. If it works, lower the heat.
3. If it fails, raise the heat.

## Invariant / taste test

The answer remains inside [left, right], and the predicate changes direction only once.

## Core template

```python
left, right = low, high

while left < right:
    mid = (left + right) // 2

    if can(mid):
        right = mid
    else:
        left = mid + 1

return left
```

## Common variations

- Search exact value
- Lower bound / first true
- Upper bound / last false
- Binary search on answer
- Rotated sorted array

## Common mistakes

- [ ] Using binary search without a monotonic condition
- [ ] Off-by-one loops that never terminate
- [ ] Choosing bounds that exclude the true answer

## Confusable recipes

- [[Two Pointers Sandwich Squeeze]]
- [[Greedy Chefs Instinct]]
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
