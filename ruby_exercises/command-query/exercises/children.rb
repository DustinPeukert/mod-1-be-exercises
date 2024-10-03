class Children
    attr_reader :eldest

    def initialize
        @eldest = nil
        @highest_age = nil
    end

    def <<(child)
        if @eldest == nil || @highest_age < child.age
            @eldest = child
            @highest_age = child.age
        end
    end

end