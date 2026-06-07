---
type: recipe
pattern: "DFS"
dish: "DFS Skewer Going Deep"
food_memory: "Skewer going deep"
status: seed
ingredient_signals:
  - "explore all connected cells"
  - "path search"
  - "tree traversal"
  - "components"
  - "island"
  - "recursive"
related:
  - "[[BFS Soup Spreading Outward]]"
  - "[[Backtracking Pizza Bar]]"
  - "[[Union-Find Dough Merging]]"
tags:
  - station/recipe
  - recipe/dfs
---

# DFS Skewer Going Deep

> Food memory: **Skewer going deep**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `explore all connected cells` | Check this recipe |
| `path search` | Check this recipe |
| `tree traversal` | Check this recipe |
| `components` | Check this recipe |
| `island` | Check this recipe |
| `recursive` | Check this recipe |

## Recognition sentence

> This looks like **DFS** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Push the skewer deep until it cannot go farther.
2. Back up and try the next branch.
3. Mark visited before wandering into cycles.

## Invariant / taste test

Every visited node is fully explored before DFS returns from it.

## Core template

```python
def dfs(node):
    if node in seen:
        return
    seen.add(node)

    for nei in neighbors(node):
        dfs(nei)
```

## Common variations

- Island counting
- Path existence
- Tree recursion
- Cycle detection
- Flood fill

## Common mistakes

- [ ] Forgetting visited in cyclic graphs
- [ ] Mutating a grid without documenting it
- [ ] Blowing recursion depth on very large graphs

## Confusable recipes

- [[BFS Soup Spreading Outward]]
- [[Backtracking Pizza Bar]]
- [[Union-Find Dough Merging]]

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
