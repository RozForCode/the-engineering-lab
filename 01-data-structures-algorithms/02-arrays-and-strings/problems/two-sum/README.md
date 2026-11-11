# Two Sum

## Problem summary
This is a classic array problem focused on using a lookup structure to track seen values efficiently.

## Goal
Given an array of integers and a target value, return the indices of the two numbers that add up to the target.

## Key idea
Use a hash map to record each value and its index as the array is scanned. For each current value, check whether the complement has already been seen.

## Solution sketch
- Initialize an empty map.
- Visit each number in order.
- Compute the complement: `target - current_value`.
- If the complement exists in the map, return both indices.
- Otherwise, store the current value and its index.

## Complexity
- Time: O(n)
- Space: O(n)

## Edge cases
- Duplicate values
- Empty input
- Target reached by the current value and an earlier value
- Multiple valid pairs

## Notes
This problem is a strong demonstration of the trade-off between brute-force scanning and smarter lookup-based reasoning.
