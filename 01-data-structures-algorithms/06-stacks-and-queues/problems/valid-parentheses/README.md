# Valid Parentheses

## Problem summary
This is a classic stack-based problem that checks whether a sequence of brackets is balanced.

## Goal
Given a string containing parentheses, brackets, and braces, determine whether the sequence is valid.

## Key idea
Traverse the string from left to right. Push opening tokens onto a stack. When a closing token appears, verify that it matches the last opening token on the stack.

## Solution sketch
- Maintain a stack.
- For each character:
  - if it is an opening bracket, push it
  - if it is a closing bracket, ensure the stack is not empty and the match is correct
- At the end, the stack must be empty.

## Complexity
- Time: O(n)
- Space: O(n)

## Edge cases
- Empty string
- Unbalanced trailing openings
- Missing closers
- Mixing bracket types incorrectly

## Notes
This problem is a strong example of how a stack encodes nested structure and enforces ordering constraints.
