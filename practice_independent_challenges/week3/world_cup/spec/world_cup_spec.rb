require 'rspec'
require '../lib/world_cup'
require '../lib/team'
require '../lib/player'

describe WorldCup do
    before(:each) do
        @france = Team.new("France")
        @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

        @france.add_player(@mbappe)
        @france.add_player(@pogba)

        @croatia = Team.new("Croatia")
        @modric = Player.new({name: "Luka Modric", position: "midfielder"})
        @vida = Player.new({name: "Domagoj Vida", position: "defender"})

        @croatia.add_player(@modric)
        @croatia.add_player(@vida)

        @world_cup = WorldCup.new(2018, [@france, @croatia])
    end

    describe '#initialize' do
        it 'is a WorldCup' do
            expect(@world_cup).to be_a(WorldCup)
        end

        it 'has a year' do
            expect(@world_cup.year).to eq(2018)
        end

        it 'has teams' do
            expect(@world_cup.teams).to eq([@france, @croatia])
        end
    end

    describe '#active_players_by_position' do
        it 'returns a list of active players by position' do
            expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba, @modric])
        end

        it 'ignores eliminated teams' do
            @croatia.eliminated = true
            expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba])
        end
    end

    describe '#all_players_by_position' do
        it 'returns a list of all players sorted by position' do
            expect(@world_cup.all_players_by_position).to eq({
                     "forward" => [@mbappe],
                     "midfielder" => [@pogba, @modric],
                     "defender" => [@vida]
                   })
        end
    end
end