class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @ingredients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredients(array)
  end


end
