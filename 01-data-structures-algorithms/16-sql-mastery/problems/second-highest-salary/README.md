# Second Highest Salary

## Problem summary
This is a standard SQL interview problem that tests ranking, DISTINCT handling, and logic around edge cases.

## Goal
Find the second highest salary from a table of employee salaries.

## Key idea
Sort salaries in descending order and select the second row, or use a ranking function to assign dense or row-based ranks.

## Solution sketch
- Order salaries descending.
- Remove duplicates if needed.
- Choose the second value from the ranked set.

## Complexity
- Time: O(n log n) when sorting is used
- Space: O(n) depending on the execution approach

## Edge cases
- Duplicate salaries
- NULL values
- Small tables with only one salary
- Missing data or empty tables

## Notes
This problem is a clear demonstration of how SQL expresses logic with ranking and set-based thinking.
