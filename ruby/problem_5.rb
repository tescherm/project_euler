#!/bin/env ruby
#
# Problem 5
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{

  nums = (1..20).to_a

  loop do
    break if nums.length == 1

    first_num = nums.pop
    next_num = nums.pop

    least_common_multiple = lcm(first_num, next_num)
    nums.push least_common_multiple

  end

  #232792560
  puts nums.shift
}
