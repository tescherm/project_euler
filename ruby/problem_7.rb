#!/bin/env ruby
#
# Problem 6
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  prime_count = 0
  number = 2
  loop do
    if number.prime?
      prime_count += 1
    end
    break if prime_count == 10001
    number += 1
  end

  #104743
  puts number
}
