class Lovisa
    attr_reader :title, :characteristics

    def initialize(title, characteristics = ['brilliant'])
        @title = title
        @characteristics = characteristics
    end

    def brilliant?
        return true if @characteristics.include?('brilliant')
        false
    end

    def kind?
        return true if @characteristics.include?('kind')
        false
    end

    def say(message)
        '**;* ' + message + ' **;*'
    end

end