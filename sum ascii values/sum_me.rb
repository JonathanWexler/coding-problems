 # Jon Wexler
 # This function takes either a string or an array of integer, loops through the values (numbers or characters) and sums their ascii values, finds the average of those values, and converts the average back to an ascii value

def sum_me data
	# Remove whitespace, split characters into an array if we are dealing with a string
	data = data.gsub(/\s+/, "").split(//) if data.kind_of? String
	# Send data to our looping method
	sum = loopy_sum data
	# Return values as a hash
	{sum: sum, average: sum/data.count, char: sum/data.count.chr}
end

def loopy_sum stuff
	sum = 0
	# For each value, convert to ascii and add to sum
	stuff.each { |s| sum += s.ord }
	sum
end

puts sum_me "nycda"
puts sum_me [1,2,3,4,5,6,7,8]