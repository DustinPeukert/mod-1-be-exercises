class Retirement

    def initialize

    end

    def calculate(current_age, retire_age)
        years_left = retire_age - current_age
        if current_age < 0
            "Error. Age cannot be negative."
        elsif years_left < 0
            "Error. You're already retired!"
        else
            "You have #{years_left} years left until you can retire. It is 2015, so you can retire in #{2015 + years_left}."
        end
    end

end