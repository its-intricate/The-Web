class Player
  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attack(player)
    # Melissa to attack and reduce Esther hp by 10
    player.hp -= 10
  end

end
