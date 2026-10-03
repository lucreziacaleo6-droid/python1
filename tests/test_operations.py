from python1.operations import add, subtract, multiply, divide

# normal cases
assert add(2,3) == 5
assert subtract(5,7) == -2
assert divide(10,4) == 2.5

# boundary cases
assert multiply(4,0) == 0
assert add(-1,1) == 0

# invalid case: division by zero raise ValueError
try:
    divide(1, 0)
    assert False, "Expected ValueError"
except ValueError:
    pass

print("All tests passed!")