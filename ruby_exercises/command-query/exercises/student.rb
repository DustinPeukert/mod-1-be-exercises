class Student
    attr_reader :grade

    def initialize
        @grade = 'C'
    end

    def study
        if @grade == 'F'
            @grade = 'D'
        elsif @grade == 'D'
            @grade = 'C'
        elsif @grade == 'C'
            @grade = 'B'
        elsif @grade == 'B'
            @grade = 'A'
        else
            return
        end
    end

    def slack_off
        if @grade == 'A'
            @grade = 'B'
        elsif @grade == 'B'
            @grade = 'C'
        elsif @grade == 'C'
            @grade = 'D'
        elsif @grade == 'D'
            @grade = 'F'
        else
            return
        end
    end

end