#!/bin/env ruby
#
# Problem 1
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  sum = 0
  (3..999).each do |number|
    sum += number if number % 3 == 0 or number % 5 == 0
  end

  #233168
  puts sum
}
