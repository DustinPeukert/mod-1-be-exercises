class Wallet
    attr_reader :cents

    def initialize
        @cents = 0
    end

    def <<(coin)
        case coin
        when :penny
            @cents += 1
        when :nickel
            @cents += 5
        when :dime
            @cents += 10
        when :quarter
            @cents += 25
        end
    end

    def take(coin, coin2 = nil)
        total_to_take = coin_value(coin) + coin_value(coin2)

        if @cents >= total_to_take
            @cents -= total_to_take
        end
    end

    def coin_value(coin)
        case coin   # case is used to compare a value against multiple possible conditions, similar to if-elsif
        when :penny # checks condition/expression
            1       # Code to run if condition/expression above is true
        when :nickel
            5
        when :dime
            10
        when :quarter
            25
        else
            0       # Code to run if nothing else passes *optional*
        end
    end

end