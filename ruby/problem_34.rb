#!/bin/env ruby
#
# Problem 34
#
# Author::    mattt
#
require 'ruby/euler_lib'

DIGIT_FACTORIAL = {}
(0..9).each do |n|
  DIGIT_FACTORIAL[n] = n.factorial
end

FACT_SUM = DIGIT_FACTORIAL.inject(0) do |sum, fact|
  sum += fact.last
end

timed_run{
  sum = 0

  FACT_SUM.downto(3) do |num|
    fact_sum = 0
    num.to_digit_array.each do |digit|
      fact_sum += DIGIT_FACTORIAL[digit]
    end

    sum += num if num == fact_sum
  end

  puts sum
}