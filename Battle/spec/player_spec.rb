require 'player'

RSpec.describe Player do
  subject(:melissa) { Player.new('Melissa') }
  subject(:esther) { Player.new('Esther') }

  it 'returns player name' do
    expect(melissa.name).to eq 'Melissa'
  end

  describe '#attack' do
    it 'reduces player_2 points by 10' do
      melissa.attack(esther)
      expect(esther.hp).to eq 90
    end
  end
end
