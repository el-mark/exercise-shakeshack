class MilkShake
  attr_reader :name, :price_of_milkshake
  def initialize(name)
  	@name = name
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  
  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
    @ingredients.each do |ingredient|
      total_price_of_milkshake += ingredient.price
    end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShackShop
  def initialize	
  	@milkshakes_order = []
  end

  def add_milkshake(milkshake)
  	@milkshakes_order.push(milkshake)
  end
	
  

  def print_milkshakes_order
    counter = 1
    totalprice = 0
    @milkshakes_order.each do |milkshake| 
        puts "#{counter}. #{milkshake.name} cost: #{milkshake.price_of_milkshake}"
        counter = counter + 1
        totalprice += milkshake.price_of_milkshake
        
    end
    puts "The Total Price is: #{totalprice}"
  end
end

nizars_milkshake = MilkShake.new("Nizars")
cocoa_milkshake = MilkShake.new("Cocoa")
allfruit_milkshake = MilkShake.new("All Fruit")

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
cocoa = Ingredient.new("Cocoa", 4)
mango = Ingredient.new("Mango", 3)
strawberry = Ingredient.new("Strawberry", 2)

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
cocoa_milkshake.add_ingredient(cocoa)
allfruit_milkshake.add_ingredient(banana)
allfruit_milkshake.add_ingredient(mango)
allfruit_milkshake.add_ingredient(strawberry)

firstorder = ShackShop.new 

firstorder.add_milkshake(nizars_milkshake)
firstorder.add_milkshake(cocoa_milkshake)
firstorder.add_milkshake(allfruit_milkshake)
firstorder.add_milkshake(cocoa_milkshake)

#puts nizars_milkshake.price_of_milkshake
#puts cocoa_milkshake.price_of_milkshake
#puts allfruit_milkshake.price_of_milkshake

firstorder.print_milkshakes_order

