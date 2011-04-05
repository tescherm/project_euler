#!/bin/env ruby
#
# Problem 48
#
# Author::    mattt
#
require 'ruby/euler_lib'

sum = 0

1.upto(1000) do |num|
  sum += num**num
end

puts sum.to_s[-10..-1]

