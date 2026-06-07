---
type: recipe
pattern: "Monotonic Stack"
dish: "Monotonic Stack Ordered Pancake Tower"
food_memory: "Ordered pancake tower"
status: seed
ingredient_signals:
  - "next greater"
  - "next smaller"
  - "warmer day"
  - "nearest taller"
  - "span"
  - "histogram"
  - "remove dominated items"
related:
  - "[[Stack Pancake Stack]]"
  - "[[Greedy Chefs Instinct]]"
  - "[[Heap Buffet Priority Line]]"
tags:
  - station/recipe
  - recipe/monotonic-stack
---

# Monotonic Stack Ordered Pancake Tower

> Food memory: **Ordered pancake tower**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `next greater` | Check this recipe |
| `next smaller` | Check this recipe |
| `warmer day` | Check this recipe |
| `nearest taller` | Check this recipe |
| `span` | Check this recipe |
| `histogram` | Check this recipe |
| `remove dominated items` | Check this recipe |

## Recognition sentence

> This looks like **Monotonic Stack** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Keep pancakes in a strict order.
2. When a new pancake breaks the order, resolve everyone it dominates.
3. Unresolved pancakes wait for a future ingredient.

## Invariant / taste test

Stack values or indices stay monotonic, so each item is pushed and popped at most once.

## Core template

```python
stack = []  # usually indices
answer = [-1] * len(nums)

for i, x in enumerate(nums):
    while stack and nums[stack[-1]] < x:
        j = stack.pop()
        answer[j] = i  # or x, distance, area contribution
    stack.append(i)

return answer
```

## Common variations

- Next greater element
- Daily temperatures
- Largest rectangle in histogram
- Stock span
- Remove k digits

## Common mistakes

- [ ] Storing values when indices are needed for distance
- [ ] Using the wrong inequality for greater vs greater-or-equal
- [ ] Forgetting the cleanup pass for remaining stack items

## Confusable recipes

- [[Stack Pancake Stack]]
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
