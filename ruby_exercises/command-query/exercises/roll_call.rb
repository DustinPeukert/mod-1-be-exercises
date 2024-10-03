class RollCall
    attr_reader :longest_name

    def initialize
        @longest_name = nil
    end

    def <<(name)
        if @longest_name.nil? || @longest_name.length < name.length
            @longest_name = name
        end
    end

end