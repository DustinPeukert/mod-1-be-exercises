class Rabbit
    attr_reader :name

    def initialize(name_details)
        if name_details[:num_syllables] == 2
            @name = name_details[:name] + " Rabbit"
        else
            @name = name_details[:name]
        end
    end

end