class Clearance
    attr_reader :best_deal

    def initialize
        @best_deal = nil
        @highest_percent = 0
    end

    def <<(item)
        if @best_deal.nil? || @highest_percent < item.percent
            @best_deal = item.name
            @highest_percent = item.percent
        end
    end

end