# Jon Wexler
# Reverse a string in place

text = "this text works"

# Reverses the text in O(n) time and O(1) space
def reverse_string text
    for i in 0...text.length/2
        if i == (text.length-1)/2 && text.length%2 == 0 
            next
        else
            temp = text[i]
            text[i] = text[text.length-1-i]
            text[text.length-1-i] = temp
        end
    end
    text
end

puts reverse_string text