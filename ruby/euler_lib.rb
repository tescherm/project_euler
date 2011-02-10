#!/bin/env ruby
#
# Contains common methods, classes
# used for project euler problems
#
# Author::    mattt
#
require 'set'

# Returns the nth fibonacci number
def fib(n)
  prev_fib = 0
  curr_fib = 1

  return 0 if n == 0
  return 1 if n == 1

  (n - 1).times do
    new_fib = prev_fib + curr_fib
    prev_fib = curr_fib
    curr_fib = new_fib
  end

  return curr_fib
end

# Track and display the elapsed
# time (in seconds) to run the given
# code block
def timed_run(&block)
  start_time = Time.now
  block.call
  end_time = Time.now
  elapsed_time = end_time - start_time
  puts "Code ran in #{elapsed_time} seconds"

end

class Integer
  # Returns true if this integer
  # is prime, false otherwise
  def prime?
    n = self
    return false if n < 2
    return true if n == 2
    return true if n == 3

    return false if n % 2 == 0
    return false if n % 3 == 0

    prime = true
    (Math.sqrt(n).ceil).downto(2) do |m|
      if n % m == 0
        prime = false
        break
      end
    end
    return prime
  end

  # Returns true if this integer is
  # a palindrome, false otherwise
  def palindrome?
    n = self

    digit_array = n.to_s.each_char.map(&:to_i)
    digit_array.shift if n < 0

    start_index = 0
    end_index = digit_array.length - 1

    palindrome = true
    loop do
      break if end_index < start_index

      if digit_array[start_index] == digit_array[end_index]
        start_index += 1
        end_index -= 1

        break if end_index == start_index
      else
        palindrome = false
        break
      end
    end

    return palindrome
  end

  # Returns an array containing this
  # integer's digits
  def to_digit_array
    self.to_s.each_char.map(&:to_i)
  end
end

# Adjacency list
class AdjacencyList
  VERT_MAP = {}

  # Adds an edge from the given source
  # vertex to the given destination vertex
  def add_edge(source, dest)
    if VERT_MAP.has_key? source
      VERT_MAP[source] << dest
    else
      VERT_MAP[source] = Set.new [dest]
    end
  end

  # Retuns a list of verticies accessible
  # from the given soruce vertex
  def get_dest_verts(source)
    dest_verts = []
    if VERT_MAP.has_key? source
      dest_verts = VERT_MAP[source]
    end
    dest_verts.freeze
  end

  # Returns the topological ordering for
  # this adjacency list
  def topological_sort()
    TopologicalSort.new().topological_sort()
  end

  def inspect()
    VERT_MAP.inspect
  end

  private

  # Topological Sort
  class TopologicalSort
    def initialize
      @visited_verts = Set.new
      @sorted_verts = []
    end

    # Returns the topological ordering for
    # this adjacency list
    def topological_sort()
      VERT_MAP.each_key do |key|
        depth_first_traversal(key)
      end
      @sorted_verts.reverse!
    end

    private

    # Performs a depth first traversal for
    # the given vertex
    def depth_first_traversal(vertex)
      return if @visited_verts.include? vertex

      @visited_verts << vertex

      if VERT_MAP.has_key? vertex
        VERT_MAP[vertex].each do |dest_vertex|
          depth_first_traversal(dest_vertex)
        end
      end

      @sorted_verts << vertex
    end
  end

end