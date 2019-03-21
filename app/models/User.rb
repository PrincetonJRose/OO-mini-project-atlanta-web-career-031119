class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    recipe_card = RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    allergen = Allergen.new(self, ingredient)
  end

  def allergens
    allergic = []
    Allergen.all.select do |item|
      if item.user == self
        allergic << item.ingredient.name
      end
    end
    allergic
  end



end
