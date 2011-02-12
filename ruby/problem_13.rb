require 'ruby/euler_lib'

numbers = IO.read('resources/numbers_problem13.txt')
NUMBER_ARRAY = numbers.split "\n"

timed_run {
  sum = 0
  NUMBER_ARRAY.each do |number|
    sum += number.to_i
  end

  digit_array = sum.to_digit_array
  puts digit_array[0, 10].join('')

}