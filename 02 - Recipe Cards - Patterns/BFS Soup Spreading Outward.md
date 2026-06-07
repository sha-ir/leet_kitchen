---
type: recipe
pattern: "BFS"
dish: "BFS Soup Spreading Outward"
food_memory: "Soup spreading outward"
status: seed
ingredient_signals:
  - "shortest path"
  - "level order"
  - "minimum moves"
  - "nearest"
  - "unweighted graph"
  - "minutes to spread"
related:
  - "[[DFS Skewer Going Deep]]"
  - "[[Topological Sort Cooking Order]]"
  - "[[Heap Buffet Priority Line]]"
tags:
  - station/recipe
  - recipe/bfs
---

# BFS Soup Spreading Outward

> Food memory: **Soup spreading outward**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `shortest path` | Check this recipe |
| `level order` | Check this recipe |
| `minimum moves` | Check this recipe |
| `nearest` | Check this recipe |
| `unweighted graph` | Check this recipe |
| `minutes to spread` | Check this recipe |

## Recognition sentence

> This looks like **BFS** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Soup spreads one layer at a time.
2. Everything in the current bowl-distance is processed before the next layer.
3. The first time you reach a node is the shortest path.

## Invariant / taste test

Queue order preserves nondecreasing distance from the start.

## Core template

```python
from collections import deque

queue = deque([start])
seen = {start}
steps = 0

while queue:
    for _ in range(len(queue)):
        node = queue.popleft()
        if is_goal(node):
            return steps
        for nei in neighbors(node):
            if nei not in seen:
                seen.add(nei)
                queue.append(nei)
    steps += 1
```

## Common variations

- Level-order tree traversal
- Shortest path in grid
- Multi-source BFS
- Rotting oranges spread
- Word ladder

## Common mistakes

- [ ] Marking seen too late and adding duplicates
- [ ] Using DFS for an unweighted shortest path
- [ ] Losing track of levels when counting steps

## Confusable recipes

- [[DFS Skewer Going Deep]]
- [[Topological Sort Cooking Order]]
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
