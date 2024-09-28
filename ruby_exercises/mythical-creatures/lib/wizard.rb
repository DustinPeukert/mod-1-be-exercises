class Wizard
    attr_reader :name, :bearded

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @spell_count = 0
    end

    def bearded?
        @bearded
    end

    def incantation(root_power)
        "sudo #{root_power}"
    end

    def rested?
        return false if @spell_count > 2
        @rested
    end

    def cast
        @spell_count += 1
        "MAGIC MISSILE!"
    end
end


# @bearded = if attributes[:bearded].present?
#     attributes[:bearded]
#     else 
#         true
#     end