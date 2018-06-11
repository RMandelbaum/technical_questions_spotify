# Question 2 -- decodeString(s): Given an encoded string, return its corresponding decoded string.
#
# The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is repeated exactly k times. Note: k is guaranteed to be a positive integer.
#
# For s = "4[ab]", the output should be decodeString(s) = "abababab"
# For s = "2[b3[a]]", the output should be decodeString(s) = "baaabaaa"
require 'byebug'

def decode_string(s)
  1 while s.gsub!(/(\d+)\[([a-z]*)\]/) { $2 * $1.to_i }
  puts s
end

decode_string("2[b3[a]]")
