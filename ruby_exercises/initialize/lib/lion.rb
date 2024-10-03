class Lion
    attr_reader :name, :sound

    def initialize(name_and_sound)
        @name = name_and_sound[:name]
        @sound = name_and_sound[:sound]
    end

end