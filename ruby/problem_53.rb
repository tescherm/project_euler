#!/bin/env ruby
#
# Problem 53
#
# Author::    mattt
#
require 'ruby/euler_lib'

# Uses the factorial formula
def choose_fact(n, k)
  n.factorial/(k.factorial * (n-k).factorial)
end

# Multiplicative approach - more efficient than the
# factorial formula
def choose(n, k)
  numer = 1
  denom = 1
  n.downto(k + 1) do |i|
    numer *= i
  end
  (n - k).downto(1) do |i|
    denom *= i
  end
  numer/denom
end

timed_run{
  count = 0
  23.upto(100) do |n|
    k = 1;
    until k == n do
      count += 1 if choose(n, k) > 1_000_000
      k += 1
    end
  end

  #4075
  puts count
}