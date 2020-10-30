require 'player'
class Game
  attr_accessor :p1, :p2
  def initialize(name1, name2)
    @players = [name1, name2]
  end

  def p1
    @players[0]
  end

  def p2
    @players[1]
  end

  def attack(player)
    player.receive_damage
  end
end
