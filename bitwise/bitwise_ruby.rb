# Convert the number 42 to a binary number represented as a string
42.to_s(2)
# To convert back to integer we can use the following specifying the base we want to convert to
"00101010".to_i(2)

# bit is short for binary digit, smallest piece of memory
# byte is the smallest block of memory that can be stored in a computer (8 bits)
42[0] 
# This will give u the bit at that index of this number's binary representation

# To get the length of the binary representation's shortest possible arrangement, use:
42.bit_length

# 255 is the largest number that can be stored in a byte (8 bits)
255.bit_length
# One more added and we exceed a byte (9 bits)
256.bit_length



