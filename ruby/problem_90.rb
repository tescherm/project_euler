#!/bin/env ruby
#
# Problem 90
#
# Author::    mattt
#
require 'ruby/euler_lib'

SQUARES = [
  [0,1],
  [0,4],
  [0,9],
  [1,6],
  [2,5],
  [3,6],
  [4,9],
  [6,4],
  [8,1],
]

SIDES = [0,1,2,3,4,5,6,7,8,9].to_set

timed_run {
  first_cube_combos = SIDES.choose(6)
  second_cube_combos = SIDES.choose(6)

  squares = 0
  first_cube_combos.each do |first_cube|
    second_cube_combos.each do |second_cube|

      [first_cube, second_cube].collect do |cube|
        if cube.member? 9
          cube << 6
        elsif cube.member? 6
          cube << 9
        end
      end

      has_all_squares = true
      SQUARES.each do |square|
        first_digit, second_digit = square

        has_square =
        ((first_cube.member? first_digit and second_cube.member? second_digit) or
        (first_cube.member? second_digit and second_cube.member? first_digit))
        if !has_square
          has_all_squares = false
          break
        end
      end

      squares += 1 if has_all_squares
    end
  end

  #1217
  puts squares/2

}