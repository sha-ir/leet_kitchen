---
type: reference
tags:
  - station/pantry
  - cookbook/master-table
---

# Master Recipe Table

| Problem ingredients | Recipe | Food memory |
|---|---|---|
| Longest/shortest contiguous substring or subarray | [[Sliding Window Stir-Fry]] | Stir-fry pan |
| Sorted array, pair/triplet, palindrome | [[Two Pointers Sandwich Squeeze]] | Sandwich squeeze |
| Subarray sum, range sum, sum equals `k` | [[Prefix Sum Marinade]] | Marinade |
| Count, frequency, duplicate, seen before | [[Hash Map Pantry Labels]] | Pantry labels |
| Sorted, smallest valid answer, “can we do x?” | [[Binary Search Taste Test]] | Taste-test adjustment |
| Parentheses, undo, nested, next greater | [[Stack Pancake Stack]] | Pancake stack |
| Next greater/smaller, warmer day, nearest taller | [[Monotonic Stack Ordered Pancake Tower]] | Ordered pancake tower |
| Top `k`, kth largest, always need min/max | [[Heap Buffet Priority Line]] | Buffet priority line |
| Shortest path, level order, minimum moves | [[BFS Soup Spreading Outward]] | Soup spreading outward |
| Explore all connected cells/nodes, path search | [[DFS Skewer Going Deep]] | Skewer going deep |
| Prerequisites, dependencies, ordering | [[Topological Sort Cooking Order]] | Cooking order |
| Connected groups, merge sets | [[Union-Find Dough Merging]] | Dough merging |
| Min/max/ways, subsequence, choices | [[Dynamic Programming Layer Cake]] | Layer cake |
| Generate all combinations/permutations/subsets | [[Backtracking Pizza Bar]] | Pizza topping trials |
| Meeting times, overlapping ranges | [[Intervals Lasagna Sheets]] | Lasagna sheets |
| Local best choice, scheduling, sorting helps | [[Greedy Chefs Instinct]] | Chef’s instinct |

## Recognition prompt

For every problem, write one sentence:

> This looks like **recipe** because **ingredient + constraint + goal**.

Examples:

- This looks like [[Sliding Window Stir-Fry]] because it asks for the longest contiguous substring without duplicates.
- This looks like [[Binary Search Taste Test]] because it asks for the minimum possible answer and we can test whether a candidate value works.
- This looks like [[Topological Sort Cooking Order]] because the problem gives prerequisites and asks whether an ordering exists.
