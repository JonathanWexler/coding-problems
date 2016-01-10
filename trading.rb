# Jon Wexler
# This code takes an array and outputs the maximum difference between two values
# as long as the the minimum value occurs before the maximum value

def max_difference(a)

    mx = a.max
    mn = a.min

    if a.index(mx)>=a.index(mn)
        return mx-mn;
    end

    b = a.dup
    c = a.dup

    b.delete(mx)
    c.delete(mn)

    return [max_proft(b), max_proft(c)].max
end

a = [4,3,56,4,12,32,-3,32,0,65,3,12,-4,34,23]

puts max_proft(a)
