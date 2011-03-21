#!/bin/env ruby
#
# Contains common methods, classes
# used for project euler problems
#
# Author::    mattt
#
require 'set'
require 'benchmark'

def lcm(a, b)
  (a * b).abs/gcd(a, b)
end

def gcd(a,b)
  return a if b == 0
  gcd(b, a % b)
end

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
# time to run the given
# code block
def timed_run(&block)
  time = Benchmark.measure do
    block.call
  end
  puts time
end

class Set
  def shift
    element = @hash.shift
    if element.nil?
      return Set.new
    else
      return element[0]
    end
  end

  def choose(k, n=self)
    return [[].to_set].to_set if n.empty? && k == 0
    return [].to_set if n.empty? && k > 0
    return [[].to_set].to_set if n.size > 0 && k == 0
    choose_set = Set.new(n)
    choose_set.shift
    new_element = Set.new(n).shift
    choose(k, choose_set) + append_all(choose(k-1, choose_set), new_element)
  end

  private

  def append_all(sets, element)
    sets.map { |l| l << element }
  end

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

  def factorial
    fact = 1
    for index in 1..self
      fact *= index
    end
    return fact
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

# prime number generator
class Primes
  include Enumerable

  FIRST_PRIME = 2

  attr_reader :primes
  def initialize(max=100)
    @max = max
    @sieve = (FIRST_PRIME..max).to_a
    @primes = []
    @p = FIRST_PRIME
  end

  # using the sieve of Eratosthenes
  def next_prime
    if !@primes.include?(FIRST_PRIME)
      @primes << FIRST_PRIME
      return FIRST_PRIME
    end

    # if not met the sieve only contains prime numbers
    # so we do not need to filter any further
    if @p < Math.sqrt(@max)
      # remove any multiples of p from the sieve
      @sieve = @sieve.select {|n| n % @p != 0 }
    end
    # increment p to the next value in the sieve
    @p = @sieve.shift
    @primes << @p
    return @p
  end

end

class BinaryTree
  def initialize(root)
    @root = root
  end

  class Node
    attr_accessor :left_child
    attr_accessor :right_child

    attr_reader :value
    def initialize(id, value)
      @id = id
      @value = value
    end

    def ==(node)
      self.value == node.value and self.id = node.id
    end

    def inspect
      "id = #{self.id} value = #{self.value}"
    end

  end

end

# Pythagorean Triplet Generator
class PythagoreanTriples
  def initialize
    @m = 2
    @n = 1
    @k = 1
  end

  def next_triple
    # using euclid's formula:
    # a = m^2 - n^2
    # b = m * n
    # c = m^2 + n^2
    a = @k * (@m**2 - @n ** 2)
    b = @k * (2 * @m * @n)
    c = @k * (@m ** 2 + @n ** 2)
    triple = [a,b,c]
    if @n == (@m - 1)
      @m += 1
      @n = 1
    else
      @n += 1
    end

    return triple
  end

  def reset
    @m = 2
    @n = 1
    @k = 1
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
