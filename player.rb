class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end

end
