#!/bin/env ruby
#
# Problem 4
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  num1 = 999
  num2 = 999

  largest_palindrome = 0
  num1.downto(0) do |n|
    num2.downto(0) do |m|
      product = n*m
      if product.palindrome? and product > largest_palindrome
        largest_palindrome = product
      end
    end
    num2 -= 1
  end

  #906609
  puts largest_palindrome
}