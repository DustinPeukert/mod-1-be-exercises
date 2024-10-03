class Apple

    def initialize
        @ripe = false
        @weeks_old = 0
    end

    def ripe?
        @ripe
    end

    def wait_a_week
        @weeks_old += 1

        if @weeks_old >= 3
            @ripe = true
        end
    end

end