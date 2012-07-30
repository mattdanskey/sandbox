require 'date'

class PersonalChef
  def make_waffles
    puts "Making waffles!"
  end
  def make_donuts
    puts "Making donuts!"
  end
end

wilfred = PersonalChef.new
#wilfred.make_waffles
#wilfred.make_donuts

class Butler # It seems class names are capitalized
  def open_front_door # but methods are not capitalized.
    puts "Opening the front door, sir."
  end
  def good_morning
    weekday = Date.today.strftime("%A")
    yday = Date.today.yday
    year = Date.today.year
    puts "Happy #{weekday}, it's the #{yday}th day of the year #{year}."
  end
end

sam = Butler.new
sam.open_front_door
sam.good_morning

class PersonalChef
  def make_waffles(texture)
    puts "Making #{texture} waffles!"
  end
end

#wilfred.make_waffles('fluffy')
#wilfred.make_waffles 'dense'

=begin 
wilfred.make_waffles without any arguments no longer works. Looks like redefining a method
totally replaces it.
=end


class PersonalChef
  def gameplan(meals)
    meals.each do |meal|
      puts "We'll have #{meal}..."
    end
    all_meals = meals.join(", ")
    puts "In summary: #{all_meals}"
  end
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
  def make_pancakes(number)
    number.times do
      puts "Making a pancake!"
    end
    puts "Finished!"
    return self
  end
  def inventory
    produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}
    produce.each do |item, quantity|
      puts "There are #{quantity} #{item} in the fridge."
    end
  end
  def water_status(minutes)
    if minutes < 7
      puts "The water is not boiling yet."
    elsif minutes == 7
      puts "It's just barely boiling"
    elsif minutes == 8
      puts "It's boiling!"
    else
      puts "Hot! Hot! Hot! Mucho Calor!"
    end
    return self
  end
  
  def countdown(counter)
    while counter > 0
      puts "The counter is #{counter}"
      counter = counter - 1
    end
    return self
  end
  def make_toast(color)
    if color.nil?
      puts "How am I supposed to make nothingness toast?"
    else
      puts "Making your toast #{color}!"
    end
    return self
  end
end

#wilfred.make_donuts('cake').make_crepes('strawberry banana').make_sushi('sockeye')

#wilfred.make_pancakes(10)
meals = ["breakfast", "lunch", "dinner", "dessert"]
#wilfred.gameplan(meals)
#wilfred.inventory
#wilfred.water_status(3)
wilfred.make_toast('french')
wilfred.make_toast(nil)
