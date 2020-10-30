require_relative 'player'
class Game

  def attack(player)
    # Melissa to attack and reduce Esther hp by 10
    player.receive_damage
  end
end
