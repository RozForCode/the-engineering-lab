# Second Highest Salary

- Problem link: https://leetcode.com/problems/second-highest-salary/
- Initial approach: Order by salary and rank
- Final approach: Use DENSE_RANK or a subquery to find the second distinct salary
- Time complexity: O(n log n)
- Space complexity: O(n)

## Edge cases
- NULL handling
- Duplicate salaries
- Large tables
- Small employee sets

## Why the solution works
Ranking queries express the business rule cleanly and are often easier to reason about than manual comparisons.

## What I learned
- Avoid overcomplicating the problem.
- Validate assumptions with examples.
- Re-check constraints and edge cases before finalizing the implementation.
