require 'euler_lib'

max_sum = 0
99.downto(1) do |num|
     99.downto(1) do |pow|
          sum = (num**pow).to_digit_array.inject(0) { 
               |sum, digit| sum += digit 
          }
          max_sum = sum if sum > max_sum
     end
end

#972
puts max_sum
