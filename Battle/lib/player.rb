class Player
  attr_accessor :name, :hp
  DEFAULT_POINTS = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_POINTS
  end

  def receive_damage
    @hp -= 10
  end

end
