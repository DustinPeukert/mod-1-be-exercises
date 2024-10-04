class Potluck
    attr_reader :date, :dishes

    def initialize(date)
        @date = date
        @dishes = []
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_catagory(category)
        chosen = category
        list_of_items = []

        @dishes.each do |dish|
            if dish.category == chosen
                list_of_items << dish
            end
        end

        list_of_items
    end

    def menu
        menu = Hash.new { |hash, key| hash[key] = [] }
        @dishes.each do |dish|
            menu[dish.category] << dish.name
        end

        menu.each do |category, dishes|
            menu[category] = dishes.sort
        end

        menu
    end

    def ratio(category)
        chosen = category
        amount_of_category = 0.0
        total_amount = 0.0

        @dishes.each do |dish|
            total_amount += 1

            if dish.category == chosen
                amount_of_category += 1
            end
        end

        ratio = (amount_of_category / total_amount) * 100
        ratio.round(1)
    end

end