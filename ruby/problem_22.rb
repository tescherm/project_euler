#!/bin/env ruby
#
# Problem 22
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run {
  names = IO.read("resources/names_problem22.txt")
  sorted_names = names.gsub("\"", '').split(",").sort

  LETTER_SCORES = Hash.new
  letter_score = 1
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ".each_char do |char|
    LETTER_SCORES[char] = letter_score
    letter_score += 1
  end

  total_score = 0
  sorted_names.each_with_index do |name, name_score|
    letter_sum = 0
    name.each_char do |char|
      letter_sum += LETTER_SCORES[char]
    end

    score = (name_score + 1) * letter_sum
    total_score += score

  end

  #871198282
  puts total_score

}
