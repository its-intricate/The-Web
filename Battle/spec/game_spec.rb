require 'game'

RSpec.describe Game do
  subject(:game) { Game.new }
  let(:melissa) { double :player }
  let(:esther) { double :player }

  describe '#attack' do
    it 'reduces player_2 points by 10' do
      expect(esther).to receive(:receive_damage)
      game.attack(esther)
    end
  end

end
