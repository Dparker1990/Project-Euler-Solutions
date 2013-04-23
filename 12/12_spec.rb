require './12'

describe ProjectEuler12 do
  context 'with a max divisor of 6' do
    it 'returns 28' do
      described_class.new(6).solve.should eq 28
    end
  end
end
