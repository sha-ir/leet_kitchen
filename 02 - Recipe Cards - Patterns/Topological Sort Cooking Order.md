---
type: recipe
pattern: "Topological Sort"
dish: "Topological Sort Cooking Order"
food_memory: "Cooking order"
status: seed
ingredient_signals:
  - "prerequisites"
  - "dependencies"
  - "ordering"
  - "course schedule"
  - "build order"
  - "directed acyclic graph"
related:
  - "[[BFS Soup Spreading Outward]]"
  - "[[DFS Skewer Going Deep]]"
  - "[[Stack Pancake Stack]]"
tags:
  - station/recipe
  - recipe/topological-sort
---

# Topological Sort Cooking Order

> Food memory: **Cooking order**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `prerequisites` | Check this recipe |
| `dependencies` | Check this recipe |
| `ordering` | Check this recipe |
| `course schedule` | Check this recipe |
| `build order` | Check this recipe |
| `directed acyclic graph` | Check this recipe |

## Recognition sentence

> This looks like **Topological Sort** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Cook prerequisites before dependent dishes.
2. Track how many ingredients each dish still waits on.
3. When a dish has no blockers, put it on the prep line.

## Invariant / taste test

Only nodes whose prerequisites are complete enter the queue or output order.

## Core template

```python
from collections import defaultdict, deque

graph = defaultdict(list)
indegree = {x: 0 for x in nodes}

for a, b in edges:  # b must come before a
    graph[b].append(a)
    indegree[a] += 1

queue = deque([x for x in nodes if indegree[x] == 0])
order = []

while queue:
    x = queue.popleft()
    order.append(x)
    for nei in graph[x]:
        indegree[nei] -= 1
        if indegree[nei] == 0:
            queue.append(nei)

return order if len(order) == len(nodes) else []
```

## Common variations

- Kahn algorithm
- DFS postorder topological sort
- Cycle detection
- Alien dictionary
- Course schedule

## Common mistakes

- [ ] Reversing edge direction
- [ ] Not detecting cycles by output length
- [ ] Assuming every node appears in the edge list

## Confusable recipes

- [[BFS Soup Spreading Outward]]
- [[DFS Skewer Going Deep]]
- [[Stack Pancake Stack]]

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
