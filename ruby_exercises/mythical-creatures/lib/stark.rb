class Stark
    attr_reader :name, :location, :house_words

    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location
        @house_words = 'Winter is Coming'
        @safe = false
    end

    def become_safe
        @safe = true
    end

    def become_unsafe
        @safe = false
    end

    def safe?
        @safe
    end

end