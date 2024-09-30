require 'rspec'
require '../lib/werewolf'

RSpec.describe Werewolf do
  it 'has a name' do
    werewolf = Werewolf.new('David')
    expect(werewolf.name).to eq('David')
  end

  it 'has a location' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.location).to eq('London')
  end

  it 'is by default human' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true
  end

  it 'when starting as a human, changing makes it turn into a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    werewolf.change!
    expect(werewolf.wolf?).to be true
    expect(werewolf.human?).to be false
  end

  it 'when starting as a human, changing again makes it be human again' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true

    werewolf.change!

    expect(werewolf.human?).to be false

    werewolf.change!

    expect(werewolf.human?).to be true
  end

  it 'when starting as a werewolf, changing a second time makes it a werewolf' do
    werewolf = Werewolf.new('David', 'London')

    werewolf.change!
    expect(werewolf.wolf?).to be true

    werewolf.change!
    werewolf.change!

    expect(werewolf.wolf?).to be true
  end

  it 'is not hungry by default' do
    werewolf = Werewolf.new('David', 'London')

    expect(werewolf.is_hungry).to be false
  end

  it 'becomes hungry after changing to a werewolf' do
    werewolf = Werewolf.new('Sparky', 'Cincinatti')

    expect(werewolf.is_hungry).to be false
    expect(werewolf.human?).to be true
    expect(werewolf.wolf?).to be false

    werewolf.change!

    expect(werewolf.is_hungry).to be true
    expect(werewolf.human?).to be false
    expect(werewolf.wolf?).to be true
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end
  end

  it 'consumes a victim' do
    werewolf = Werewolf.new('Luna', 'Portland')
    victim = Victim.new

    werewolf.change!

    expect(werewolf.consume(victim)).to eq("Om Nom Nom")
  end

  it 'cannot consume a victim if it is in human form' do
    werewolf = Werewolf.new('Rex', 'Miami')
    victim = Victim.new

    expect(werewolf.consume(victim)).to eq("You can't do that!")

    werewolf.change!

    expect(werewolf.consume(victim)).to eq("Om Nom Nom")
  end

  it 'a werewolf that has consumed a human being is no longer hungry' do
    werewolf = Werewolf.new('Fenrir', 'Asgard')
    victim = Victim.new

    werewolf.change!
    expect(werewolf.is_hungry).to be true

    werewolf.consume(victim)
    expect(werewolf.is_hungry).to be false
  end

  it 'a werewolf who has consumed a victim makes the victim dead' do
    werewolf = Werewolf.new('Lycaon', 'Arcadia')
    victim = Victim.new

    expect(victim.status).to eq(:alive)

    werewolf.change!
    werewolf.consume(victim)
    expect(victim.status).to eq(:dead)
  end

end
