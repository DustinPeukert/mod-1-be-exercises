class TrickOrTreater
    attr_reader :bag, :sugar_level

    def initialize(style)
        @style = style
        @bag = Bag.new
        @sugar_level = 0
    end

    def dressed_up_as
        @style.style
    end

    def has_candy?
        !bag.empty?
    end

    def candy_count
        bag.count
    end

    def eat
        eaten_candy = bag.candies.pop
        @sugar_level += eaten_candy.sugar
    end

end