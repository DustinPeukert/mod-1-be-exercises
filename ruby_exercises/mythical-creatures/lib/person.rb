class Person
    attr_reader :name
    attr_accessor :is_stoned

    def initialize(name)
        @name = name
        @is_stoned = false
    end

    def stoned?
        @is_stoned
    end
end