require 'player'

describe Player do
  subject(:james) { Player.new('James') }

  describe '#name' do
    it 'returns the name entered' do
      expect(james.name).to eq 'James'
    end
  end
end