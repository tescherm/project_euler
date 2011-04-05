#!/bin/env ruby
#
# Problem 36
#
# Author::    mattt
#
require 'ruby/euler_lib'

MAX = 1_000_000

timed_run{
  sum = 0
  0.upto(MAX) do |num|
    if num.palindrome? and ("%b" % num).to_i.palindrome?
      sum += num
    end
  end

  puts sum
}