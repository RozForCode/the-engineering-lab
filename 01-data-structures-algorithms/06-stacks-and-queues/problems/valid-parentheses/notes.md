# Valid Parentheses

- Problem link: https://leetcode.com/problems/valid-parentheses/
- Initial approach: Stack matching
- Final approach: Push opening brackets and pop when the matching closer appears
- Time complexity: O(n)
- Space complexity: O(n)

## Edge cases
- Empty string
- Mixed bracket types
- Unmatched opening brackets
- Extra closing brackets

## Why the solution works
The stack maintains nested structure and prevents invalid ordering.

## What I learned
- Avoid overcomplicating the problem.
- Validate assumptions with examples.
- Re-check constraints and edge cases before finalizing the implementation.
