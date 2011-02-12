require 'ruby/euler_lib'

ONE_THOUSAND = 11 #one-thousand

HUNDRED = 7 #hundred
AND = 3 #and

ONES = {
  0 => 0,
  1 => 3, #one
  2 => 3, #two
  3 => 5, #three
  4 => 4, #four
  5 => 4, #five
  6 => 3, #six
  7 => 5, #seven
  8 => 5, #eight
  9 => 4, #nine
}

TENS = {
  10 => 3, #ten
  11 => 6, #eleven
  12 => 6, #twelve
  13 => 8, #thirteen
  14 => 8, #fourteen
  15 => 7, #fifteen
  16 => 7, #sixteen
  17 => 9, #seventeen
  18 => 8, #eighteen
  19 => 8, #nineteen

  0 => 0,
  2 => 6, #twenty
  3 => 6, #thirty
  4 => 5, #forty
  5 => 5, #fifty
  6 => 5, #sixty
  7 => 7, #seventy
  8 => 6, #eighty
  9 => 6, #ninety
}

timed_run {
  sum = 0

  1.upto(9) do |num|
    sum += ONES[num]
  end

  10.upto(99) do |num|
    if TENS.has_key? num
      sum += TENS[num]
    else
      num_array = num.to_digit_array

      tens_place = num_array[0]
      ones_place = num_array[1]

      sum += TENS[tens_place] + ONES[ones_place]

    end
  end

  100.upto(999) do |num|

    num_array = num.to_digit_array

    hundreds_place = num_array[0]
    tens_place = num_array[1]
    ones_place = num_array[2]

    sum += ONES[hundreds_place]
    sum += HUNDRED

    tens = "#{tens_place}#{ones_place}".to_i
    next if tens == 0

    sum += AND
    if TENS.has_key? tens and tens_place != 0
      sum += TENS[tens]
    else
      sum += TENS[tens_place] + ONES[ones_place]
    end

  end

  sum += ONE_THOUSAND

  #21124
  puts sum

}
