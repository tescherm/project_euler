#!/bin/env ruby
#
# Problem 3
#
# Author::    mattt
#
require 'ruby/euler_lib'

#TODO slow (42 seconds)
timed_run{
  number = 600851475143
  largest_prime_factor = 0

  (Math.sqrt(number).ceil).downto(2) do |m|
    if m.prime? and number % m == 0
      largest_prime_factor = m
      break
    end
  end

  #6857
  puts largest_prime_factor
}
