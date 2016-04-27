# Jon Wexler
# Given a string, determine the length of the last word if it exists
# @param {String} s
# @return {Integer}
# Source: https://leetcode.com/problems/length-of-last-word/


def length_of_last_word(s)

	# Check if the string is nil or empty
    return 0 if s.nil? || s.strip.empty?

    # split the string into an array, and find the length of the last element
    return s.split.last.length
end