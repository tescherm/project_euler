#!/bin/env ruby
#
# Problem 2
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  sum = 0
  n = 0
  loop do
    fib_result = fib(n)

    break if fib_result >= 4000000

    sum += fib_result if fib_result % 2 == 0
    n+=1

  end

  #4613732
  puts sum
}

