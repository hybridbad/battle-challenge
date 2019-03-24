require 'player'

describe Player do
  subject(:dwight) { Player.new('Dwight') }
  subject(:bow) { Player.new('Bow Legs') }

  describe '#name' do
    it 'returns the name entered' do
      expect(dwight.name).to eq 'Dwight'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dwight.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      expect(bow).to receive(:receive_damage)
      dwight.attack(bow)
    end
  end

  describe '#receive damage' do
    it 'reduces the player hit points' do
      expect { dwight.receive_damage }.to change { dwight.hit_points }.by(-10)
    end
  end
end