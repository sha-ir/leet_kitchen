---
type: recipe
pattern: "Dynamic Programming"
dish: "Dynamic Programming Layer Cake"
food_memory: "Layer cake"
status: seed
ingredient_signals:
  - "minimum"
  - "maximum"
  - "number of ways"
  - "can we form this"
  - "subsequence"
  - "choices over time"
  - "overlapping subproblems"
related:
  - "[[Backtracking Pizza Bar]]"
  - "[[Greedy Chefs Instinct]]"
  - "[[Prefix Sum Marinade]]"
tags:
  - station/recipe
  - recipe/dynamic-programming
---

# Dynamic Programming Layer Cake

> Food memory: **Layer cake**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `minimum` | Check this recipe |
| `maximum` | Check this recipe |
| `number of ways` | Check this recipe |
| `can we form this` | Check this recipe |
| `subsequence` | Check this recipe |
| `choices over time` | Check this recipe |
| `overlapping subproblems` | Check this recipe |

## Recognition sentence

> This looks like **Dynamic Programming** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Each layer depends on earlier layers.
2. Define what one slice of cake means before baking transitions.
3. Bake layers in the order dependencies require.

## Invariant / taste test

Every dp state stores the correct answer for its smaller subproblem before it is used by a larger state.

## Core template

```python
# Checklist before coding:
# State: what does dp[i] mean?
# Choice: what options do I have?
# Transition: how do smaller answers build this one?
# Base case: what do I already know?
# Order: which states must be solved first?

dp = [base_value] * (n + 1)
dp[0] = known_base

for i in range(1, n + 1):
    for choice in choices:
        dp[i] = best_or_count(dp[i], transition_from(choice))

return dp[n]
```

## Common variations

- 1D linear DP
- 2D grid DP
- Knapsack
- Subsequence DP
- Interval DP
- Memoized recursion

## Common mistakes

- [ ] Coding before defining dp state in one sentence
- [ ] Wrong iteration order
- [ ] Forgetting base cases
- [ ] Counting duplicates because choices are ordered incorrectly

## Confusable recipes

- [[Backtracking Pizza Bar]]
- [[Greedy Chefs Instinct]]
- [[Prefix Sum Marinade]]

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
