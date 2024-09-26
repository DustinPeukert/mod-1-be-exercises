class Vampire
    attr_reader :name, :animal

    def initialize(name, animal = "bat", thirst = true)
        @name = name
        @animal = animal
        @thirst = thirst
    end

    def pet
        @animal
    end

    def thirsty
        @thirst
    end

    def drink
        @thirst = false
    end
end