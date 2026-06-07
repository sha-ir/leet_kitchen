---
type: reference
tags:
  - station/pantry
  - cookbook/confusable
---

# Confusable Ingredients

Use this when two recipes smell similar.

## Sliding Window vs Prefix Sum

| Ask | Prefer |
|---|---|
| Contiguous + grow/shrink validity | [[Sliding Window Stir-Fry]] |
| Sum/range total with arbitrary start | [[Prefix Sum Marinade]] |
| Negative numbers present and target sum | Usually [[Prefix Sum Marinade]] |
| `at most k`, no duplicate, current window must stay valid | Usually [[Sliding Window Stir-Fry]] |

## DFS vs BFS

| Ask | Prefer |
|---|---|
| Shortest path or minimum moves in unweighted graph | [[BFS Soup Spreading Outward]] |
| Explore all connected cells/nodes | [[DFS Skewer Going Deep]] |
| Level order | [[BFS Soup Spreading Outward]] |
| Backtracking choices and undo | [[Backtracking Pizza Bar]] or DFS-style recursion |

## Greedy vs Dynamic Programming

| Ask | Prefer |
|---|---|
| Local choice can be proven safe by exchange argument | [[Greedy Chefs Instinct]] |
| Choice depends on prior state and overlaps with future states | [[Dynamic Programming Layer Cake]] |
| Sort by end time, choose earliest safe finish | Often [[Greedy Chefs Instinct]] |
| Count ways or optimize over many branching choices | Often [[Dynamic Programming Layer Cake]] |

## Stack vs Monotonic Stack

| Ask | Prefer |
|---|---|
| Nested, undo, matching pairs | [[Stack Pancake Stack]] |
| Next greater/smaller, nearest taller, spans | [[Monotonic Stack Ordered Pancake Tower]] |

## Two Pointers vs Binary Search

| Ask | Prefer |
|---|---|
| Sorted list, pair/triplet, eliminate from both ends | [[Two Pointers Sandwich Squeeze]] |
| Sorted search space or answer space with yes/no test | [[Binary Search Taste Test]] |
