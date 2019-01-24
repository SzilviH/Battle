require 'player'

describe Player do
  subject(:archie) { Player.new("Archie") }
  subject(:ozzy) { Player.new("Ozzy") }

  describe '#name' do
    it 'returns name' do
      expect(archie.name).to eq "Archie"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(archie.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces players hit points' do
      expect { ozzy.receive_damage }.to change { ozzy.hit_points }.by(-10)
    end
  end
end
