#!/bin/env ruby
#
# Problem 52
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  num = 1
  loop do

    # TODO expensive digit sort.
    # Using a multiset/bag might be more efficient
    sorted_digits = num.to_digit_array.sort

    match = true
    [2,3,4,5,6].each do |coefficient|
      next_sorted_digits = (coefficient * num).to_digit_array.sort
      if sorted_digits != next_sorted_digits
        match = false
        break
      end
    end

    break if match

    num += 1
  end

  #142857
  puts num
}