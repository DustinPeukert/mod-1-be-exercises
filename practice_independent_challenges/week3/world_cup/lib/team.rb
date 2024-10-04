class Team
    attr_reader :country,
                :players
    attr_accessor :eliminated

    def initialize(country)
        @country = country
        @eliminated = false
        @players = []
    end

    def eliminated?
        @eliminated
    end

    def add_player(player)
        @players << player
    end

    def players_by_postion(position)
        position_list = []
        
        @players.each do |player|
            if player.position == position
                position_list << player
            end
        end

        position_list
    end
end