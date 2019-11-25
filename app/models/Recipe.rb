class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.map do |rc|
      if rc.recipe == self
        rc.user
      end
    end
  end

  def ingredients
    RecipeIngredient.all.map do |ri|
      if ri.recipe == self
        ri.ingredient
      end
    end
  end

  def allergens
    users.map { |u| user.allergens }.flatten
  end

  def add_ingredients(ingredients)
    ingredients.each { |i| RecipeIngredient.new(i, self) }
  end

  def self.most_popular
    all.max_by { |r| r.users.count }
  end

end