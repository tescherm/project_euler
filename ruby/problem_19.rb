require 'ruby/euler_lib'
require 'date'

timed_run {

  start_date = Date.new(1901, 1, 1)
  end_date = Date.new(2000, 12, 31)

  sunday_count = 0
  #TODO sort of cheating since the date library handles leap
  #years, etc.
  start_date.upto(end_date) do |date|
    sunday_count += 1 if date.cwday == 7 and  date.day == 1
  end

  puts sunday_count

}

