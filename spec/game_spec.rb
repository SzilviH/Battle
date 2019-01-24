require 'game'

describe Game do
  let(:archie) { double(:player, receive_damage: true) }
  let(:ozzy) { double(:player, receive_damage: true) }
  let(:game) { described_class.new(archie, ozzy) }

  it 'returns player 1' do
    expect(game.player_1).to eq(archie)
  end

  it 'returns player 2' do
    expect(game.player_2).to eq(ozzy)
  end


  describe '#attack' do
    it 'damages the player' do
      expect(ozzy).to receive(:receive_damage)
      game.attack(ozzy)
    end
  end
end
