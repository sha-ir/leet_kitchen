---
type: recipe
pattern: "Greedy"
dish: "Greedy Chefs Instinct"
food_memory: "Chef’s instinct"
status: seed
ingredient_signals:
  - "local best choice"
  - "scheduling"
  - "sorting helps"
  - "minimum number"
  - "maximize profit"
  - "choose earliest/latest"
related:
  - "[[Intervals Lasagna Sheets]]"
  - "[[Heap Buffet Priority Line]]"
  - "[[Dynamic Programming Layer Cake]]"
  - "[[Binary Search Taste Test]]"
tags:
  - station/recipe
  - recipe/greedy
---

# Greedy Chefs Instinct

> Food memory: **Chef’s instinct**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `local best choice` | Check this recipe |
| `scheduling` | Check this recipe |
| `sorting helps` | Check this recipe |
| `minimum number` | Check this recipe |
| `maximize profit` | Check this recipe |
| `choose earliest/latest` | Check this recipe |

## Recognition sentence

> This looks like **Greedy** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Make the locally best bite that never blocks the final meal.
2. Prove the choice by exchange: any optimal solution can be reshaped to include it.
3. Sort to reveal the next safe choice.

## Invariant / taste test

After each local choice, there remains at least one optimal solution consistent with choices already made.

## Core template

```python
items.sort(key=rule_that_reveals_safe_choice)
answer = initial

for item in items:
    if safe_to_take(item, answer):
        take(item, answer)

return answer
```

## Common variations

- Interval scheduling
- Jump game
- Gas station
- Assign cookies
- Huffman-style heap greedy

## Common mistakes

- [ ] Trusting intuition without an exchange argument
- [ ] Using greedy when future choices depend on hidden state
- [ ] Sorting by the wrong field

## Confusable recipes

- [[Intervals Lasagna Sheets]]
- [[Heap Buffet Priority Line]]
- [[Dynamic Programming Layer Cake]]
- [[Binary Search Taste Test]]

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
