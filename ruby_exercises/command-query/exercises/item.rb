class Item
    attr_reader :name, :percent

    def initialize(name, price:, discount:)
        @name = name
        @price = price
        @discount = discount
        @percent = calculate_percent
    end

    def calculate_percent
        (@discount.to_f / @price.to_f) * 100
    end

end