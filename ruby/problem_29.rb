#!/bin/env ruby
#
# Problem 29
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{

  terms = Set.new

  2.upto(100) do |a|
    2.upto(100) do |b|
      terms << a**b
    end
  end

  #9183
  puts terms.length
}