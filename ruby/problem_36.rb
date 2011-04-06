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
    if num.palindrome_fast? and ("%b" % num).to_i.palindrome_fast?
      sum += num
    end
  end

  #872187
  puts sum
}