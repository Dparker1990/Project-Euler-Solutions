require_relative '../summation_of_primes'

describe SummationOfPrimesSolver do
  context "primes under 10" do
    it "should equal 17" do
      SummationOfPrimesSolver.solve(10).should eq 17
    end
  end
end
