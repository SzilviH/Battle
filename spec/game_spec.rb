require 'game'

describe Game do
  let(:ozzy) { double(:player, receive_damage: true) }

  describe '#attack' do
    it 'damages the player' do
      expect(ozzy).to receive(:receive_damage)
      subject.attack(ozzy)
    end
  end
end
