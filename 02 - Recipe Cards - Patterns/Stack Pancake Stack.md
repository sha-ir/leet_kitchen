---
type: recipe
pattern: "Stack"
dish: "Stack Pancake Stack"
food_memory: "Pancake stack"
status: seed
ingredient_signals:
  - "parentheses"
  - "undo"
  - "nested"
  - "last opened first closed"
  - "decode string"
  - "valid expression"
related:
  - "[[Monotonic Stack Ordered Pancake Tower]]"
  - "[[DFS Skewer Going Deep]]"
  - "[[Topological Sort Cooking Order]]"
tags:
  - station/recipe
  - recipe/stack
---

# Stack Pancake Stack

> Food memory: **Pancake stack**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `parentheses` | Check this recipe |
| `undo` | Check this recipe |
| `nested` | Check this recipe |
| `last opened first closed` | Check this recipe |
| `decode string` | Check this recipe |
| `valid expression` | Check this recipe |

## Recognition sentence

> This looks like **Stack** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Stack pancakes as you open work.
2. Pop the top pancake when the matching close arrives.
3. The top is always the most recent unresolved ingredient.

## Invariant / taste test

The stack contains only unresolved items, ordered from oldest at bottom to newest at top.

## Core template

```python
stack = []

for x in items:
    if opens_or_starts(x):
        stack.append(x)
    elif closes_or_resolves(x):
        if not stack or not matches(stack[-1], x):
            return False
        stack.pop()

return not stack
```

## Common variations

- Valid parentheses
- Min stack
- Expression evaluation
- Decode string
- Path simplification

## Common mistakes

- [ ] Popping without checking empty stack
- [ ] Forgetting the final stack must be empty
- [ ] Confusing stack with queue in level-order problems

## Confusable recipes

- [[Monotonic Stack Ordered Pancake Tower]]
- [[DFS Skewer Going Deep]]
- [[Topological Sort Cooking Order]]

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
