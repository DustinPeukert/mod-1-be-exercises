class Centaur
    attr_reader :name, :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @laying = false
        @exhaustion = 0
    end

    def cranky?
        @cranky
    end

    def standing?
        @standing
    end

    def laying?
        @laying
    end

    def shoot
        if !@laying
            if !@cranky
                @exhaustion += 1

                if @exhaustion >= 3
                    @cranky = true
                end

                'Twang!!!'
            else
                'NO!'
            end
        else
            'NO!'
        end
    end

    def run
        if !@laying
            @exhaustion += 1

            if @exhaustion >= 3
                @cranky = true
            end

            'Clop clop clop clop!'
        else
            'NO!'
        end
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def sleep
        if !@standing
            @exhaustion = 0
            @cranky = false
        else
            'NO!'
        end
    end

    def drink_potion
        if !@laying
            if !@cranky
                'Bleghhhh'
            else
                @exhaustion = 0
                @cranky = false
            end
        else
            'NO!'
        end
    end

end