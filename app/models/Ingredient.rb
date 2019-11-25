class Ingredient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def allergens
        Allergen.all.select { |a| a.ingredient == self }
    end

    def self.most_common_allergen
        all.max_by do |i|
            i.allergens.count
        end
    end

end