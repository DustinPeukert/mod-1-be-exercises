class WorldCup
    attr_reader :year,
                :teams
    
    def initialize(year, teams)
        @year = year
        @teams = teams
    end

    def active_players_by_position(selected_position)
        active_position_list = []

        @teams.each do |team|
            if team.eliminated? == false
                team.players.each do |player|
                    if player.position == selected_position
                        active_position_list << player
                    end
                end
            end
        end

        active_position_list
    end

    def all_players_by_position
        sorted_list = Hash.new { |hash, key| hash[key] = []}

        @teams.each do |team|
            team.players.each do |player|
                sorted_list[player.position] << player
            end
        end

        sorted_list
    end
end