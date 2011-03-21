require 'ruby/euler_lib'

MAX = 2_000_000

timed_run{
  generator = Primes.new(MAX)

  sum = 0
  loop do
    prime = generator.next_prime
    break if prime == nil
    sum += prime
  end

  #142913828922
  puts sum
}