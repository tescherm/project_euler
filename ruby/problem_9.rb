#!/bin/env ruby
#
# Problem 9
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run {
  triples = PythagoreanTriples.new

  triple_product = 0
  loop do
    a,b,c = triples.next_triple
    if a + b + c == 1000
      triple_product = a * b * c
      break
    end
  end

  puts triple_product
}