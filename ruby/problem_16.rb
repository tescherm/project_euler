#!/bin/env ruby
#
# Problem 16
#
# Author::    mattt
#
require 'ruby/euler_lib'

number = 2 ** 1000
digit_array = number.to_digit_array

sum = 0
digit_array.each do |digit|
  sum += digit
end

#1366
puts sum