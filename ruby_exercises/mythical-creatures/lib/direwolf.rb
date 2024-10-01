class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect

    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        if @home == stark.location && @starks_to_protect.count < 2
            @starks_to_protect << stark
            stark.become_safe
        end
    end

    def leaves(stark)
        @starks_to_protect.delete(stark)
        stark.become_unsafe
        stark
    end

    def hunts_white_walkers?
        if @starks_to_protect.empty?
            true
        else
            false
        end
    end

end