#!/bin/env ruby
#
# Problem 6
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  sum_of_squares = 0

  sum = 0
  (1..100).each do |num|
    sum_of_squares += num ** 2
    sum += num
  end

  square_of_sums = sum ** 2

  #25164150
  puts square_of_sums - sum_of_squares
}