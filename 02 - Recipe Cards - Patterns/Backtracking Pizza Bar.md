---
type: recipe
pattern: "Backtracking"
dish: "Backtracking Pizza Bar"
food_memory: "Pizza topping trials"
status: seed
ingredient_signals:
  - "all combinations"
  - "all permutations"
  - "all subsets"
  - "all valid boards"
  - "generate all possibilities"
  - "search space"
related:
  - "[[DFS Skewer Going Deep]]"
  - "[[Dynamic Programming Layer Cake]]"
  - "[[Greedy Chefs Instinct]]"
tags:
  - station/recipe
  - recipe/backtracking
---

# Backtracking Pizza Bar

> Food memory: **Pizza topping trials**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `all combinations` | Check this recipe |
| `all permutations` | Check this recipe |
| `all subsets` | Check this recipe |
| `all valid boards` | Check this recipe |
| `generate all possibilities` | Check this recipe |
| `search space` | Check this recipe |

## Recognition sentence

> This looks like **Backtracking** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Add topping.
2. Explore.
3. Remove topping.
4. Try the next topping.

## Invariant / taste test

The current path is a valid partial dish under the choices made so far.

## Core template

```python
def backtrack(path):
    if done(path):
        result.append(path[:])
        return

    for choice in choices:
        if invalid(choice, path):
            continue

        path.append(choice)
        backtrack(path)
        path.pop()
```

## Common variations

- Subsets
- Combinations
- Permutations
- N-Queens
- Word search
- Palindrome partitioning

## Common mistakes

- [ ] Appending path without copying it
- [ ] Not pruning invalid choices early
- [ ] Forgetting to undo state after recursion

## Confusable recipes

- [[DFS Skewer Going Deep]]
- [[Dynamic Programming Layer Cake]]
- [[Greedy Chefs Instinct]]

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
