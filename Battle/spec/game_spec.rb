require 'game'

RSpec.describe Game do
  subject(:game) { Game.new(p1, p2) }
  let(:p1) { double :player }
  let(:p2) { double :player }


  it "has two player instances" do
    expect(game.p1).to eq p1
    expect(game.p2).to eq p2
  end

  describe '#attack' do
    it 'reduces player_2 points by 10' do
      expect(p2).to receive(:receive_damage)
      game.attack(p2)
    end
  end

end
