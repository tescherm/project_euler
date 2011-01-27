#!/bin/env ruby
#
# Problem 25
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  n = 0
  loop do
    fib_result = fib(n)
    break if fib_result.to_s.split('').length == 1000
    n += 1
  end

  #4782
  puts n
}

