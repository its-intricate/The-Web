require 'player'

RSpec.describe Player do
  subject(:melissa) { Player.new('Melissa') }
  
  it 'returns player name' do
    expect(melissa.name).to eq 'Melissa'
  end
end
