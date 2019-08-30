class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.map do |rc|
            if rc.user == self
                rc.recipe
            end
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergen(ingredient)
        Allergen.new(self, ingredient)
    end

    def allergens
        Allergen.all.map do |a|
            if a.user == self
                a.ingredient
            end
        end
    end

    def most_recent_recipe
        RecipeCard.all.select { |rc| rc.user == self}.map { |rc| rc.recipe }.last
    end

    def top_three_recipes

    end

end
