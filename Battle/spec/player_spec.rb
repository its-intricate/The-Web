require 'player'

RSpec.describe Player do
  subject(:melissa) { Player.new('Melissa') }
  subject(:esther) { Player.new('Esther') }

  it 'returns player name' do
    expect(melissa.name).to eq 'Melissa'
  end

  it 'gives default hit points' do
    expect(melissa.hp).to eq Player::DEFAULT_POINTS
  end

end
