class Werewolf
    attr_reader :name, :location, :is_hungry

    def initialize(name, location = nil)
        @name = name
        @location = location
        @is_human = true
        @is_wolf = false
        @is_hungry = false
    end

    def human?
        @is_human
    end

    def wolf?
        @is_wolf
    end

    def change!
        @is_human = !@is_human
        @is_wolf = !@is_wolf

        if @is_wolf == true
            @is_hungry = true
        end
    end

    def consume(victim)
        if @is_wolf
            @is_hungry = false
            victim.status = :dead
            "Om Nom Nom"
        else
            "You can't do that!"
        end
    end

end