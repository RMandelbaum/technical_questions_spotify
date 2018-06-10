# Question 1 -- sortByStrings(s,t): Sort the letters in the string s by the order they occur in the string t. You can assume t will not have repetitive characters. For s = "weather" and t = "therapyw", the output should be sortByString(s, t) = "theeraw". For s = "good" and t = "odg", the output should be sortByString(s, t) = "oodg".
require 'byebug'

def sort_by_strings(s,t)
  order_word = hash_map_order_word(t)
  target_word = s.split('')

  sorted = []
  repeats = []
  target_word.each do |char|
       if !sorted.include?(char)
         index = order_word[char]
       else
        repeats.push(char)
       end

       sorted.insert(index, char) unless index.nil?
       
     end
  end

  repeats.each do |char|

   index = sorted.index(char) + 1
   sorted.insert(index, char)
  end

  result = sorted.join("")
  result

end

def hash_map_order_word(t)
  ordered_word = {}
  t.split('').each_with_index do |char, index|
    ordered_word[char] = index
    end
  ordered_word
end

sort_by_strings("weather","therapyw")
