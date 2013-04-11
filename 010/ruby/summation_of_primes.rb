require 'mathn'

module SummationOfPrimesSolver
  LIMIT = 2_000_000

  extend self
  def solve(limit = LIMIT)
    Prime.inject do |sum, prime|
      return sum if prime > limit
      sum + prime
    end
  end
end

if $0 == __FILE__
  p SummationOfPrimesSolver.solve
end
