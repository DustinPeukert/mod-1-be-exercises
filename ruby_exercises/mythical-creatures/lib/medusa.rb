class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        statues << victim
        victim.is_stoned = true

        if @statues.count > 3
            first_victim = @statues.shift
            first_victim.is_stoned = false
        end
    end

end