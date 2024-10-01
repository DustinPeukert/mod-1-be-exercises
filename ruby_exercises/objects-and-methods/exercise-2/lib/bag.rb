class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        @candies.empty?
    end

    def count
        @candies.count
    end

    def <<(candy)
        @candies << candy
    end

    def contains?(type)
        @candies.any? do |candy|
            candy.type == type
        end
    end

    def grab(type)
        candy = @candies.find { |candy| candy.type == type }
        @candies.delete(candy) if candy
        candy
    end

    def take(number)
        taken_candies = @candies.pop(number)
        taken_candies
    end

end