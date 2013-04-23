require 'mathn'

class ProjectEuler12
  attr_reader :last_triangle, :max_divisors, :last_max

  def initialize(max_divisors)
    @max_divisors = max_divisors
    @last_max = 1
    @last_triangle = 0
  end

  def solve
    number_of_divisors
  end

  private

  def number_of_divisors
    loop do
      @last_triangle = generate_next_triangle
      _, powers = last_triangle.prime_division.transpose

      num_of_divisors = powers.map(&:succ).reduce(:*) unless powers.nil?

      return last_triangle if num_of_divisors.to_i >= max_divisors

      @last_max += 1
    end
  end

  def generate_next_triangle
    last_triangle + last_max
  end
end

if __FILE__ == $0
  p ProjectEuler12.new(500).solve
end
