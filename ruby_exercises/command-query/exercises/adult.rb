class Adult

    def initialize
        @sober = true
        @drinks = 0
    end

    def consume_an_alcoholic_beverage
        @drinks += 1
        
        if @drinks >= 3
            @sober = false
        end
    end

    def sober?
        @sober
    end

end