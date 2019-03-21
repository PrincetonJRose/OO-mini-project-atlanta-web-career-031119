class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    count = 0
    most_allergic = nil
    ingredients = Allergen.all.map { |item| item.ingredient.name }
    ingredients.each do |item|
      counts = ingredients.count(item)
      if counts > count
        count = counts
        most_allergic = item
      end
    end
    most_allergic
  end
end
