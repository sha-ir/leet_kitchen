---
type: library
tags:
  - station/tasting
  - cookbook/invariants
---

# Invariant Library

An invariant is the taste test that tells you the dish is still cooking correctly.

| Recipe | Core invariant | Problems that taught it |
|---|---|---|
| [[Sliding Window Stir-Fry]] | The current window contains exactly the ingredients allowed by the problem. |  |
| [[Two Pointers Sandwich Squeeze]] | Everything outside the two pointers has already been decided or safely ruled out. |  |
| [[Prefix Sum Marinade]] | The prefix value summarizes all flavor before the current index. |  |
| [[Hash Map Pantry Labels]] | The map accurately represents the items seen so far or the counts inside the current window. |  |
| [[Binary Search Taste Test]] | The answer remains inside [left, right], and the predicate changes direction only once. |  |
| [[Stack Pancake Stack]] | The stack contains only unresolved items, ordered from oldest at bottom to newest at top. |  |
| [[Monotonic Stack Ordered Pancake Tower]] | Stack values or indices stay monotonic, so each item is pushed and popped at most once. |  |
| [[Heap Buffet Priority Line]] | The heap root is always the next best candidate under the priority rule. |  |
| [[BFS Soup Spreading Outward]] | Queue order preserves nondecreasing distance from the start. |  |
| [[DFS Skewer Going Deep]] | Every visited node is fully explored before DFS returns from it. |  |
| [[Topological Sort Cooking Order]] | Only nodes whose prerequisites are complete enter the queue or output order. |  |
| [[Union-Find Dough Merging]] | Items with the same root are in the same connected component. |  |
| [[Dynamic Programming Layer Cake]] | Every dp state stores the correct answer for its smaller subproblem before it is used by a larger state. |  |
| [[Backtracking Pizza Bar]] | The current path is a valid partial dish under the choices made so far. |  |
| [[Intervals Lasagna Sheets]] | Processed intervals are sorted and merged with no unresolved overlaps. |  |
| [[Greedy Chefs Instinct]] | After each local choice, there remains at least one optimal solution consistent with choices already made. |  |

## Add your own invariant

```text
Pattern:
Invariant:
Where it appeared:
Why it prevents bugs:
```
