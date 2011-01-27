#!/bin/env ruby
#
# Problem 5
#
# Author::    mattt
#
require 'ruby/euler_lib'

#TODO slow (several minutes)
timed_run{
  n = 0
  loop do
    n += 1
    next if n % 2 != 0
    next if n % 3 != 0

    is_divisible = true
    20.downto(1) do |i|
      if n % i != 0
        is_divisible = false
        break
      end
    end

    break if is_divisible
  end

  puts n
}
