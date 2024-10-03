class Catalog
    attr_reader :cheapest

    def initialize
        @cheapest = nil
        @lowest_price = nil
    end

    def <<(product)
        if @cheapest == nil || @lowest_price > product.price
            @cheapest = product.name
            @lowest_price = product.price
        end
    end

end