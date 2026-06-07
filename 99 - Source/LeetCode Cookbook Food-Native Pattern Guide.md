# LeetCode Cookbook: Food-Native Pattern Guide

## Core Mantra

> **Ingredients reveal the recipe.**
> Do not memorize problems. Learn to recognize the dish.

Every LeetCode problem gives you **ingredients**: keywords, constraints, data structures, and goals. Your job is to match those ingredients to a known **recipe**, then cook using the template.

------

## First Taste Test: Constraints

Before choosing a recipe, check how big the input is.

| Constraint                 | Likely Recipe                                   |
| -------------------------- | ----------------------------------------------- |
| `n <= 20`                  | Backtracking, bitmask, brute force with pruning |
| `n <= 1,000`               | Maybe `O(n²)`                                   |
| `n <= 100,000+`            | Usually `O(n)` or `O(n log n)`                  |
| Sorted input               | Two pointers or binary search                   |
| Grid/tree/graph            | DFS, BFS, union-find                            |
| Min/max/ways               | Dynamic programming or greedy                   |
| Top `k`                    | Heap                                            |
| Contiguous subarray/string | Sliding window or prefix sum                    |

------

## Master Recipe Table

| Problem Ingredients                               | Recipe                  | Food Memory            |
| ------------------------------------------------- | ----------------------- | ---------------------- |
| Longest/shortest contiguous substring or subarray | **Sliding Window**      | Stir-fry pan           |
| Sorted array, pair/triplet, palindrome            | **Two Pointers**        | Sandwich squeeze       |
| Subarray sum, range sum, sum equals `k`           | **Prefix Sum**          | Marinade               |
| Count, frequency, duplicate, seen before          | **Hash Map**            | Pantry labels          |
| Sorted, smallest valid answer, “can we do x?”     | **Binary Search**       | Taste-test adjustment  |
| Parentheses, undo, nested, next greater           | **Stack**               | Pancake stack          |
| Next greater/smaller, warmer day, nearest taller  | **Monotonic Stack**     | Ordered pancake tower  |
| Top `k`, kth largest, always need min/max         | **Heap**                | Buffet priority line   |
| Shortest path, level order, minimum moves         | **BFS**                 | Soup spreading outward |
| Explore all connected cells/nodes, path search    | **DFS**                 | Skewer going deep      |
| Prerequisites, dependencies, ordering             | **Topological Sort**    | Cooking order          |
| Connected groups, merge sets                      | **Union-Find**          | Dough merging          |
| Min/max/ways, subsequence, choices                | **Dynamic Programming** | Layer cake             |
| Generate all combinations/permutations/subsets    | **Backtracking**        | Pizza topping trials   |
| Meeting times, overlapping ranges                 | **Intervals**           | Lasagna sheets         |
| Local best choice, scheduling, sorting helps      | **Greedy**              | Chef’s instinct        |

------

## Recipe Cards

### Sliding Window Stir-Fry

Use when the problem says:

```text
longest substring
shortest subarray
contiguous
at most k
without repeating
window of size k
```

Mental recipe:

```text
Add on the right.
If the pan gets bad, remove from the left.
Update the best answer.
```

Core template:

```python
left = 0

for right in range(len(nums)):
    add nums[right]

    while window_is_bad:
        remove nums[left]
        left += 1

    update_answer()
```

------

### Prefix Sum Marinade

Use when the problem says:

```text
subarray sum
range sum
sum equals k
continuous total
```

Mental recipe:

```text
Flavor so far minus old flavor gives the slice flavor.
```

Core equation:

```text
sum(i..j) = prefix[j] - prefix[i - 1]
```

For subarray sum equals `k`:

```text
current_sum - old_prefix = k
old_prefix = current_sum - k
```

------

### Binary Search Taste Test

Use when the problem asks:

```text
minimum possible answer
maximum possible answer
can we do it with x?
sorted search
```

Mental recipe:

```text
Try a middle amount.
If it works, lower the heat.
If it fails, raise the heat.
```

Core template:

```python
left, right = low, high

while left < right:
    mid = (left + right) // 2

    if can(mid):
        right = mid
    else:
        left = mid + 1

return left
```

------

### Dynamic Programming Layer Cake

Use when the problem asks:

```text
minimum
maximum
number of ways
can we form this?
subsequence
choices over time
```

Mental recipe:

```text
Each layer depends on earlier layers.
```

DP checklist:

```text
State: What does dp[i] mean?
Choice: What options do I have?
Transition: How do smaller answers build this one?
Base case: What do I already know?
Order: Which layers must be baked first?
```

------

### Backtracking Pizza Bar

Use when the problem asks:

```text
all combinations
all permutations
all subsets
all valid boards
generate all possibilities
```

Mental recipe:

```text
Add topping.
Explore.
Remove topping.
Try the next topping.
```

Core template:

```python
def backtrack(path):
    if done:
        result.append(path[:])
        return

    for choice in choices:
        if invalid:
            continue

        path.append(choice)
        backtrack(path)
        path.pop()
```

------

## Problem-Solving Flow

When you open a problem, ask:

```text
1. What are the ingredients?
2. Is the input sorted?
3. Is it contiguous?
4. Is it asking for min/max/ways?
5. Is it asking for all possibilities?
6. Is it graph/tree/grid?
7. What do the constraints allow?
8. What dish does this resemble?
```

Then say:

> **“This looks like ___ because ___.”**

Example:

```text
This looks like sliding window because it asks for the longest substring with no duplicates.
```

------

## Study Card Template

Use this after every problem:

```text
Problem:
Dish:
Ingredients:
Recipe:
Invariant / Taste Test:
Common Mistake:
```

Example:

```text
Problem:
Longest Substring Without Repeating Characters

Dish:
Sliding Window Stir-Fry

Ingredients:
String, longest substring, no duplicate characters

Recipe:
Expand right.
Track characters in the pan.
If duplicate appears, shrink from left.
Update max length.

Invariant / Taste Test:
Current window has no duplicate characters.

Common Mistake:
Shrinking only once instead of shrinking until valid.
```

------

## Daily Consumption Plan

Do **3 problems per pattern**, not 30 random problems.

For each pattern:

```text
1 easy to learn the recipe
1 medium to apply it
1 medium/hard to stress-test it
```

After each problem, write the recipe card.
Your goal is not:

> “I solved this problem.”

Your goal is:

> **“I can recognize this dish again.”**