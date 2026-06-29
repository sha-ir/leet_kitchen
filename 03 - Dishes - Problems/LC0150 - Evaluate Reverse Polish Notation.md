---
type: problem
leetcode_id: 150
source: https://leetcode.com/problems/evaluate-reverse-polish-notation/
difficulty: medium
status: solved
patterns:
  - "[[Stack Pancake Stack]]"
dish: Stack Pancake Stack
ingredient_tags:
  - stack
  - expression-eval
solved_on: 2026-06-28
review_due: 2026-07-01
confidence: 5
time_spent_min:
mistakes:
tags:
  - station/dish
  - recipe/stack
  - difficulty/medium
---

# LC0150 - Evaluate Reverse Polish Notation

## Problem

Link: https://leetcode.com/problems/evaluate-reverse-polish-notation/

Evaluate an arithmetic expression in Reverse Polish Notation. Operators `+ - * /`; division truncates toward zero.

## Ingredient scan

```text
Keywords: reverse polish notation, evaluate expression, operators
Data structures: stack of operands
Goal: the integer value of the expression
Constraints: 1 <= tokens.length <= 1e4; operands in [-200, 200]
Sorted? No
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top k? Single value
```

## Recognition sentence

This looks like [[Stack Pancake Stack]] because operands stack up and each operator resolves the two most-recent values — classic last-in-first-out expression evaluation.

## Confusable recipes

- Could be [[Monotonic Stack Ordered Pancake Tower]] if order/next-greater mattered, but RPN is a plain LIFO evaluation.

## Recipe

Operands stack as pancakes. When an operator skewer arrives, it spears the top two pancakes, cooks them into one result, and drops that back on top. Order matters for `-` and `/`: the lower pancake is the left operand.

## Invariant / taste test

The stack always holds the operands of the sub-expression evaluated so far; at the end exactly one value remains — the answer.

## Plan before code

1. For each token: if operator, pop two (`b` is the lower/left, `a` the top/right), compute, push.
2. For `-` use `b - a`; for `/` use `int(b / a)` to truncate toward zero.
3. Else push `int(token)`. Return the single remaining value.

## Code

```python
class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        stack = []
        for t in tokens:
            if t == "+":
                stack.append(stack.pop() + stack.pop())
            elif t == "-":
                a, b = stack.pop(), stack.pop()
                stack.append(b - a)
            elif t == "*":
                stack.append(stack.pop() * stack.pop())
            elif t == "/":
                a, b = stack.pop(), stack.pop()
                stack.append(int(b / a))
            else:
                stack.append(int(t))
        return stack[0]
```

## Tests and edge cases

- `["2","1","+","3","*"]` → 9.
- Negative operands like `-11`.
- Division truncates toward zero: `int(b / a)` not `//` (which floors for negatives).
- Order-sensitive ops (`-`, `/`) take the lower element as the left operand.

## Common mistake

None this pass — clean solve. (Trap: using `//` for division — it floors toward −∞; `int(b / a)` truncates toward zero as required.)

## Review prompt

When I see "evaluate an RPN / postfix expression", I should think operand stack: push numbers, on an operator pop two (mind the order) and push the result.
