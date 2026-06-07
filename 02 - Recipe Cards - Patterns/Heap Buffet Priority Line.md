---
type: recipe
pattern: "Heap"
dish: "Heap Buffet Priority Line"
food_memory: "Buffet priority line"
status: seed
ingredient_signals:
  - "top k"
  - "kth largest"
  - "always need min"
  - "always need max"
  - "merge sorted"
  - "priority"
related:
  - "[[Binary Search Taste Test]]"
  - "[[Greedy Chefs Instinct]]"
  - "[[BFS Soup Spreading Outward]]"
tags:
  - station/recipe
  - recipe/heap
---

# Heap Buffet Priority Line

> Food memory: **Buffet priority line**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `top k` | Check this recipe |
| `kth largest` | Check this recipe |
| `always need min` | Check this recipe |
| `always need max` | Check this recipe |
| `merge sorted` | Check this recipe |
| `priority` | Check this recipe |

## Recognition sentence

> This looks like **Heap** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Let the highest-priority plate cut the line.
2. Keep only the plates worth considering.
3. For top k, keep a small heap instead of sorting the whole buffet.

## Invariant / taste test

The heap root is always the next best candidate under the priority rule.

## Core template

```python
import heapq

heap = []

for x in items:
    heapq.heappush(heap, score(x))
    if len(heap) > k:
        heapq.heappop(heap)

return heap
```

## Common variations

- Top k frequent
- Kth largest
- Merge k sorted lists
- Dijkstra-style priority expansion
- Running median with two heaps

## Common mistakes

- [ ] Sorting when a heap would maintain only k items
- [ ] Forgetting Python heapq is a min-heap
- [ ] Putting mutable or incomparable values into heap tuples incorrectly

## Confusable recipes

- [[Binary Search Taste Test]]
- [[Greedy Chefs Instinct]]
- [[BFS Soup Spreading Outward]]

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
