#!/bin/env ruby
#
# Problem 11
#
# Author::    mattt
#
require 'ruby/euler_lib'

timed_run{

  grid = IO.read('resources/grid_problem11.txt')
  grid_rows = grid.split "\n"

  grid_array = []
  grid_rows.collect do |grid_row|
    grid_array << grid_row.split(" ").collect { |col_value| col_value.to_i }
  end

  MAX_INDEX = 3
  ROWS = grid_array.length
  COLS = grid_array.first.length

  max_product = 0

  grid_array.each_with_index do |col, row_index|
    col.each_with_index do |value, col_index|

      #west
      west_product = value
      (1..MAX_INDEX).each do |adj_index|
        break if col_index + adj_index == COLS
        west_product *= grid_array[row_index][col_index + adj_index]
      end

      #left_diag
      left_diag_product = value
      (1..MAX_INDEX).each do |adj_index|
        break if col_index - adj_index == -1
        break if row_index + adj_index == ROWS

        left_diag_product *= grid_array[row_index + adj_index][col_index - adj_index]
      end

      #right_diag
      right_diag_product = value
      (1..MAX_INDEX).each do |adj_index|
        break if col_index + adj_index == COLS
        break if row_index + adj_index == ROWS

        right_diag_product *= grid_array[row_index + adj_index][col_index + adj_index]
      end

      #south
      south_product = value
      (1..MAX_INDEX).each do |adj_index|
        break if row_index + adj_index == ROWS
        south_product *= grid_array[row_index + adj_index][col_index]
      end

      product = [right_diag_product, left_diag_product, south_product, west_product].max
      max_product = product if product > max_product

    end
  end

  #70600674
  puts max_product

}