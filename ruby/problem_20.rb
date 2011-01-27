#!/bin/env ruby
#
# Problem 20
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  product = 1

  (1..100).each do |n|
    product *= n
  end

  sum = product.to_s.split("").inject(0) { |sum, n| sum + n.to_i }

  #648
  puts sum
}