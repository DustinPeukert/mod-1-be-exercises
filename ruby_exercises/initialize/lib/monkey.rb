class Monkey
    attr_reader :name, :type, :favorite_food

    def initialize(monkey_details)
        @name = monkey_details[0]
        @type = monkey_details[1]
        @favorite_food = monkey_details[2]
    end

end