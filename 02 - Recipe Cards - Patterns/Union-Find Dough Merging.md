---
type: recipe
pattern: "Union-Find"
dish: "Union-Find Dough Merging"
food_memory: "Dough merging"
status: seed
ingredient_signals:
  - "connected groups"
  - "merge sets"
  - "same component"
  - "number of components"
  - "equivalence"
  - "dynamic connectivity"
related:
  - "[[DFS Skewer Going Deep]]"
  - "[[BFS Soup Spreading Outward]]"
  - "[[Greedy Chefs Instinct]]"
tags:
  - station/recipe
  - recipe/union-find
---

# Union-Find Dough Merging

> Food memory: **Dough merging**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `connected groups` | Check this recipe |
| `merge sets` | Check this recipe |
| `same component` | Check this recipe |
| `number of components` | Check this recipe |
| `equivalence` | Check this recipe |
| `dynamic connectivity` | Check this recipe |

## Recognition sentence

> This looks like **Union-Find** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Each ingredient starts as its own dough ball.
2. Merge dough balls when a relation connects them.
3. Ask the parent label which dough ball an item belongs to.

## Invariant / taste test

Items with the same root are in the same connected component.

## Core template

```python
parent = list(range(n))
rank = [0] * n

def find(x):
    if parent[x] != x:
        parent[x] = find(parent[x])
    return parent[x]

def union(a, b):
    ra, rb = find(a), find(b)
    if ra == rb:
        return False
    if rank[ra] < rank[rb]:
        ra, rb = rb, ra
    parent[rb] = ra
    if rank[ra] == rank[rb]:
        rank[ra] += 1
    return True
```

## Common variations

- Connected components
- Cycle detection in undirected graph
- Accounts merge
- Number of islands II
- Minimum spanning tree support

## Common mistakes

- [ ] Forgetting path compression or union by rank on large inputs
- [ ] Mixing 0-based and 1-based labels
- [ ] Using union-find when path order or distance matters

## Confusable recipes

- [[DFS Skewer Going Deep]]
- [[BFS Soup Spreading Outward]]
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
