#!/bin/env ruby
#
# Problem 6
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{
  number = IO.read('resources/number_problem8.txt').to_i
  number_array = number.to_digit_array

  greatest_product = 0

  start_index = 0
  sub_length = 5

  while (start_index + sub_length) != number_array.length

    sub_array = number_array[start_index, sub_length]

    product = 1
    sub_array.each do |num|
      product *= num
    end

    greatest_product = product if product > greatest_product

    start_index += 1

  end

  #40824
  puts greatest_product
}