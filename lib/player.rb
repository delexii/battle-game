class Player
  attr_reader :name, :hit_points
  HIT_POINTS = 50

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def name
    @name
  end

  def initial_hit_points
    @hit_points
  end

  def damage
    @hit_points -= 10
  end
end
