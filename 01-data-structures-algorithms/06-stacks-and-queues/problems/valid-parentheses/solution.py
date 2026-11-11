def is_valid(s):
    pairs = {')': '(', ']': '[', '}': '{'}
    stack = []
    for ch in s:
        if ch in '([{':
            stack.append(ch)
        elif stack and pairs[ch] == stack[-1]:
            stack.pop()
        else:
            return False
    return not stack

print(is_valid('()[]{}'))
