---
type: reference
tags:
  - station/pantry
  - cookbook/constraints
---

# Constraint Taste Test

Before choosing a recipe, check how large the input is.

| Constraint | Likely recipe |
|---|---|
| `n <= 20` | [[Backtracking Pizza Bar]], bitmasking, brute force with pruning |
| `n <= 1,000` | Maybe `O(n²)` |
| `n <= 100,000+` | Usually `O(n)` or `O(n log n)` |
| Sorted input | [[Two Pointers Sandwich Squeeze]] or [[Binary Search Taste Test]] |
| Grid/tree/graph | [[DFS Skewer Going Deep]], [[BFS Soup Spreading Outward]], [[Union-Find Dough Merging]] |
| Min/max/ways | [[Dynamic Programming Layer Cake]] or [[Greedy Chefs Instinct]] |
| Top `k` | [[Heap Buffet Priority Line]] |
| Contiguous subarray/string | [[Sliding Window Stir-Fry]] or [[Prefix Sum Marinade]] |

## How to use this note

1. Read constraints before pattern-matching from the title.
2. Write the allowed complexity in your problem card.
3. Eliminate recipes that cannot fit the input size.
4. Use the remaining ingredients to choose the dish.
