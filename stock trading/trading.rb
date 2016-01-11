# Jon Wexler
# This code takes an array and outputs the maximum difference between two values
# as long as the the minimum value occurs before the maximum value
# O(n) time and O(nlogn) space

# max_difference takes an array and recursively finds the minimum and maximum values in the array to calculate the greatest difference
def max_difference(a)

# max and min values are taken from array a
mx = a.max
mn = a.min

# If the min number appears before the max then we have the greatest difference
if a.index(mx)>=a.index(mn)
    return mx-mn;
end

# duplicate array a twice
b = a.dup
c = a.dup


b.delete(mx)
c.delete(mn)

return [max_proft(b), max_proft(c)].max
end

a = [4,3,56,4,12,32,-3,32,0,65,3,12,-4,34,23]

puts max_difference(a)
