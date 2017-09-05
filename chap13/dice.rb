class Die
  def initialize
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat(d)
    if d<=6 && d>=1
      @number_showing = d
    end
  end
end

dice = Die.new
puts dice.showing
dice.cheat(4)
puts dice.showing
