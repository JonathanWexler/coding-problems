# Jon Wexler
# The goal is to replace each element of the array with the product of every other element
# No division allowed

a = [3,5,8]
# [40, 24, 15]

# O(n) runtime, O(n) space
def product_of_all_but_one a
    # if the array is only one element, return it
    return a if a.length < 2
    # create a new array to return
    new_array = Array.new(a.length)
    # create a temporary value to store products
    temp = 1
    # loop through array to store new product so far
    for i in 0...a.length
        new_array[i] = temp
        temp *= a[i]
    end
    # reassign product value
    temp = 1
    # loop backwards and multiply reverse products on array
    for j in (a.length-1).downto(0)
        # puts a[i]
        new_array[j] *= temp
        temp *= a[j]
    end
    # return the new array
    new_array
end

puts product_of_all_but_one a