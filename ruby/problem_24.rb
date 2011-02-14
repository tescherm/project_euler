#!/bin/env ruby
#
# Problem 24
#
# Author::    mattt
#
require 'ruby/euler_lib'

class Array
  def swap!(a,b)
    self[a], self[b] = self[b], self[a]
    self
  end
end

NTH_SEQUENCE = 1_000_000

@nth_sequence = ''
@@count = 0

def rotate_left(sequence, start)
  start_element = sequence[start]
  for index in start..(sequence.length - 1)
    sequence[index] = sequence[index + 1]
  end
  sequence[sequence.length - 1] = start_element
end

def permute(sequence, start)
  return if @@count == NTH_SEQUENCE

  #TODO clean this up.
  @@count += 1
  if @@count == NTH_SEQUENCE
    @nth_sequence = sequence.join('')
    return
  end

  (sequence.length - 2).downto(start) do |from_index|
    (from_index + 1).upto(sequence.length - 1) do |to_index|
      sequence.swap!(from_index, to_index)
      permute(sequence, from_index + 1)
    end
    rotate_left(sequence, from_index)
  end
end

timed_run{
  sequence = [0,1,2,3,4,5,6,7,8,9]
  permute(sequence, 0)

  #2783915460
  puts @nth_sequence
}

