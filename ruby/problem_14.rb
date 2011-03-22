#!/bin/env ruby
#
# Problem 14
#
# Author::    mattt
#
require 'ruby/euler_lib'

N = 1_000_000

timed_run{
  largest_sequence = 0
  largest_num = 0

  N.downto(N/2) do |num|
    sequence = 0
    n = num
    until n == 1 do
      n = n % 2 == 0 ? n/2 : 3*n + 1
      sequence += 1
    end
    if sequence > largest_sequence
      largest_num = num
      largest_sequence = sequence
    end
  end

  #837799
  puts largest_num
}