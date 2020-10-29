require 'game'

RSpec.describe Game do
  subject(:game) {Game.new('Melissa','Esther')}

  describe '#attack' do
    it 'reduces player_2 points by 10' do
      game.attack(game.p2)
      expect(game.p2.hp).to eq 90
    end
  end

end
