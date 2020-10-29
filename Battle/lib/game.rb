require 'player'
class Game
  attr_accessor :p1, :p2
  def initialize(name1, name2)
    @p1 = Player.new(name1)
    @p2 = Player.new(name1)
  end

  def attack(player)
    # Melissa to attack and reduce Esther hp by 10
    player.hp -= 10
  end
end
