class Parrot
    attr_reader :name, :sound, :known_words

    def initialize(parrot_tails)
        @name = parrot_tails[:name]
        @sound = 'Squawk!'
        @known_words = parrot_tails[:known_words]
    end

end