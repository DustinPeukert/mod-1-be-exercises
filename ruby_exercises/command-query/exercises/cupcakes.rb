class Cupcakes
    attr_reader :sweetest

    def initialize
        @sweetest = nil
        @sugar = 0
    end

    def <<(cupcake)
        if @sweetest.nil? || @sugar < cupcake.sugar
            @sweetest = cupcake
            @sugar = cupcake.sugar
        end
    end

end