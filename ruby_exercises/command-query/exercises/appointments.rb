class Appointments
    attr_reader :earliest

    def initialize
        @earliest = nil
    end

    def at(time)
        if @earliest == nil || time < @earliest
            @earliest = time
        end
    end

end