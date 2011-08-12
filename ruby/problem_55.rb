require 'euler_lib'

MAX = 10_000
ITERATIONS = 50

count = 0
1.upto(MAX) do |num|
 
     found_palindrome = false
     iteration_num = num	     
     ITERATIONS.times do
	sum = iteration_num + iteration_num.to_s.reverse!.to_i
	if sum.palindrome_fast?
	     found_palindrome = true
	     next
	end
	iteration_num = sum	
     end
     count += 1 unless found_palindrome
end

# 249
puts count
