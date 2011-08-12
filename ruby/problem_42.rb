require 'open-uri'

WORDS = IO.read("resources/words.txt").gsub("\"", '').split(",")

# Map of letter positions in the alphabet
LETTER_POSITIONS = {}
"ABCDEFGHIJKLMNOPQRSTUVWXYZ".each_char.inject(1) do |index, char|
  LETTER_POSITIONS[char] = index
  index += 1
end

# Map of first 100 triangle numbers
TRIANGLE_NUMS = {}
100.downto(1) do |n|
  triangle_num = (n*(n+1))/2
  TRIANGLE_NUMS[triangle_num] = 1
end

count = 0
WORDS.each do |word|

  position_sum = 0
  word.each_char do |char|
    position_sum += LETTER_POSITIONS[char]
  end

  count += 1 unless TRIANGLE_NUMS[position_sum].nil?

end

# 162
puts count
