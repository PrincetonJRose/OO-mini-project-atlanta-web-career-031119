require_relative '../config/environment.rb'


kitty = User.new("Kitty Pride")
bobby = User.new("Bobby")
kitty.add_recipe_card("Bean Casaroll", "3/21/2019", "5 stars")
beans = Ingredient.new("Green beans")
ham = Ingredient.new("Honey baked ham")
water = Ingredient.new("Water")
milk = Ingredient.new("Milk")
eggs = Ingredient.new("Egg")
kitty.declare_allergen(ham)
kitty.declare_allergen(milk)
kitty.declare_allergen(eggs)
bobby.declare_allergen(water)
bobby.declare_allergen(beans)
bobby.declare_allergen(milk)
binding.pry
