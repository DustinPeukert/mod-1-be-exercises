require 'rspec'
require '../lib/player'
require '../lib/team'

describe Team do
  before(:each) do
    @team = Team.new("France")
  end

  describe 'Object' do
    it 'is a team' do
      expect(@team).to be_a(Team)
    end

    it 'has a country' do
      expect(@team.country).to eq("France")
    end

    it 'is not eliminated by default' do
      expect(@team.eliminated?).to be false
    end

    it 'has no players by default' do
      expect(@team.players).to eq([])
    end
  end

  describe 'Instance Methods' do
    describe '#add_player' do
      it 'can add players' do
        mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

        @team.add_player(mbappe)
        @team.add_player(pogba)

        expect(@team.players).to eq([mbappe, pogba])
      end
    end

    describe '#players_by_position' do
      it 'returns all players of a specific position' do
        mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

        @team.add_player(mbappe)
        @team.add_player(pogba)

        expect(@team.players_by_postion("midfielder")).to eq([pogba])
        expect(@team.players_by_postion("defender")).to eq([])
      end
    end
  end
end