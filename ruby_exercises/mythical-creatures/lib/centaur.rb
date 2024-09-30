class Centaur
    attr_reader :name, :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @laying = false
        @exhaustion = 0
    end

    def cranky?
        @cranky
    end

    def standing?
        @standing
    end

    def laying?
        @laying
    end

    def shoot
        return 'NO!' if @laying || @cranky
      
        @exhaustion += 1
        @cranky = true if @exhaustion >= 3
      
        'Twang!!!'
    end

    def run
        return 'NO!' if @laying
      
        @exhaustion += 1
        @cranky = true if @exhaustion >= 3
      
        'Clop clop clop clop!'
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def sleep
        return 'NO!' if @standing
      
        @exhaustion = 0
        @cranky = false
    end

    def drink_potion
        return 'NO!' if @laying
        return 'Bleghhhh' unless @cranky
      
        @exhaustion = 0
        @cranky = false
    end

end