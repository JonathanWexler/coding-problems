# Jon Wexler
# given a string of words in the wrong order, reverse the order or the words

sample = "sentence sample a is this"

def reverse_words text
    words = text.split
    for i in 0...words.count/2
        temp = words[i]
        words[i] = words[words.count-1-i]
        words[words.count-1-i] = temp
    end
    words.join(" ")
end

puts reverse_words sample