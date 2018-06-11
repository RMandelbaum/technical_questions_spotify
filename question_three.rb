
# Question 3 -- changePossibilities(amount,amount): Your quirky boss collects rare, old coins. They found out you're a programmer and asked you to solve something they've been wondering for a long time.
#
# Write a function that, given an amount of money and an array of coin denominations, computes the number of ways to make the amount of money with coins of the available denominations.
#
# Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 4—the number of ways to make 4¢ with those denominations:
#
# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢

require 'byebug'

def change_possibilities(amount, denominations)
  num_of_ways = [0] * (amount + 1)
  num_of_ways[0] = 1

  denominations.each do |coin|
    (coin..amount).each do |greater_value|
      value_difference = greater_value - coin
      num_of_ways[greater_value] += num_of_ways[value_difference]
   end
  end

 puts num_of_ways[amount]

end

change_possibilities(4, [1,2,3])
