# Jon Wexler
# return the nth fibonacci number in the squence given some number n

# Recursive solution, seems to be the regular solution
# Call the sequence again for n-2 and n-1, until it reaches the base cases
# O(2^n) time and O(1) space
def fib(n)
    # return base cases of 0, 1
    return n if n == 0 || n == 1
    # call the function again to add the previous two numbers
    return fib(n-2)+fib(n-1)
end

# puts fib(7)

# Better solution is surprisingly iterative
# If we keep track of previously visited values we don't need to make multiple of the
# same calls
# O(n) runtime and O(1) space
def iter_fib(n)
    return n if n == 0 || n == 1

    two_before = 0
    one_before = 1

    for i in 2..n
        current = two_before + one_before
        two_before = one_before
        one_before = current
    end
    one_before
end

puts iter_fib(10)