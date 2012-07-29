class PersonalChef
  def make_waffles
    puts "Making waffles!"
  end
  def make_donuts
    puts "Making donuts!"
  end
end

wilfred = PersonalChef.new
wilfred.make_waffles
wilfred.make_donuts

class Butler # It seems class names are capitalized
  def open_front_door # but methods are not capitalized.
    puts "Opening the front door, sir."
  end
end

sam = Butler.new
sam.open_front_door

class PersonalChef
  def make_waffles(texture)
    puts "Making #{texture} waffles!"
  end
end

wilfred.make_waffles('fluffy')
wilfred.make_waffles 'dense'

=begin 
wilfred.make_waffles no longer works. Looks like redefining a method
totally replaces it.
=end

class PersonalChef
  def make_donuts(flavor)
    puts "Making #{flavor} donuts!"
    return self
  end
  def make_crepes(fruit)
    puts "Making #{fruit} crepes!"
    return self
  end
  def make_sushi(fish)
    puts "Making #{fish} sushi!"
    return self
  end
end

wilfred.make_donuts('cake').make_crepes('strawberry banana').make_sushi('sockeye')

