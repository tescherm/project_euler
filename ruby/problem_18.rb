require 'ruby/euler_lib'

timed_run{

  triangle = IO.read('resources/triangle_problem18.txt')
  triangle_rows = triangle.split "\n"

  triangle_array = []
  triangle_rows.collect do |triangle_row|
    triangle_array << triangle_row.split(" ").collect { |col_value| col_value.to_i }
  end

  adjacent_row = triangle_array.last

  (triangle_array.length - 2).downto(0) do |row_index|
    max_sums = []
    current_row = triangle_array[row_index]
    current_row.each_with_index do |value, col|
      max_value = [value + adjacent_row[col], value + adjacent_row[col+1]].max
      max_sums << max_value
    end
    adjacent_row = max_sums
  end

  puts adjacent_row.shift

}