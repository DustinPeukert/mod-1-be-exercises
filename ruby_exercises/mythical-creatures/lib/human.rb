class Human
    attr_reader :name
    # in the future, try to not use attr_accessor as it is frowned upon
    # changes should conventionally be made within the class that is being changed
    attr_accessor :encounter_counter

    def initialize(name = 'Jane')
        @name = name
        @encounter_counter = 0
        @notices_ogre = false
        @knocked_out = false
    end

    def notices_ogre?
        if @encounter_counter % 3 == 0
            @notices_ogre = true
        else
            @notices_ogre = false
        end

        @notices_ogre
    end

    def knock_out
        @knocked_out = true
    end

    def wake_up
        @knocked_out = false
    end

    def knocked_out?
        @knocked_out
    end

end