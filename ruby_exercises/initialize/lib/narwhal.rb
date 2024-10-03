class Narwhal
    attr_reader :name, :weight

    def initialize(narwhal_details)
        @name = narwhal_details[:name]
        @weight = narwhal_details[:weight]
        @cute = narwhal_details[:cute]
    end

    def cute?
        @cute
    end

end