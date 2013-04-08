require 'prime'

module SummationOfPrimesSolver
  attr_reader :limit

  extend self
  def solve(limit)
    @limit = limit

    solution
  end

  private

  def solution
    range.each do
      if last_prime > limit
        primes.pop
        break
      end

      primes << generate_next_prime
    end

    primes_sum
  end

  def range
    (1..Float::INFINITY).lazy
  end

  def primes_sum
    primes.reduce(:+)
  end

  def primes
    @range ||= []
  end

  def last_prime
    primes.last || 1
  end

  def prime_generator
    @prime_generator ||= Prime::EratosthenesGenerator.new
  end

  def generate_next_prime
    prime_generator.succ
  end
end

p SummationOfPrimesSolver.solve(2000000)
