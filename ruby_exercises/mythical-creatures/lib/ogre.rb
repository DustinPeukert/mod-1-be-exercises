class Ogre
    attr_reader :name, :home, :swings, :encounter_counter

    def initialize(name, home = 'Swamp')
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        human.encounter_counter += 1
        @encounter_counter += 1

        if human.notices_ogre?
            swing_at(human)
        end
    end

    def swing_at(human)
        @swings += 1

        if @swings % 2 == 0
            human.knock_out
        end
    end

    def apologize(human)
        human.wake_up
    end

end