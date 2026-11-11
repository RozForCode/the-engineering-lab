# Two Sum

- Problem link: https://leetcode.com/problems/two-sum/
- Initial approach: Hash map / index lookup
- Final approach: Use a hash map to keep the complement and return immediately when found
- Time complexity: O(n)
- Space complexity: O(n)

## Edge cases
- Empty lists
- Duplicate values
- Target matches current value
- Multiple valid pairs

## Why the solution works
The core idea is to convert repeated value lookups into constant-time dictionary access.

## What I learned
- Avoid overcomplicating the problem.
- Validate assumptions with examples.
- Re-check constraints and edge cases before finalizing the implementation.
