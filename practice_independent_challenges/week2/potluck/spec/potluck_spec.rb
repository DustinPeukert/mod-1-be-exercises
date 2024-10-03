require 'rspec'
require '../lib/dish'
require '../lib/potluck'

describe Potluck do
    describe '#initialize' do
        it 'is a potluck' do
            potluck = Potluck.new('7-13-18')
            expect(potluck).to be_a(Potluck)
        end

        it 'it has a date' do
            potluck = Potluck.new('7-13-18')
            expect(potluck.date).to eq('7-13-18')
        end

        it 'has no dishes by default' do
            potluck = Potluck.new('7-13-18')
            expect(potluck.dishes).to eq([])
        end
    end

    describe '#add_dish' do
        it 'can add dishes' do
            potluck = Potluck.new('7-13-18')
            couscous_salad = Dish.new('Couscous Salad', :appetizer)
            cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)

            potluck.add_dish(couscous_salad)
            potluck.add_dish(cocktail_meatballs)

            expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
            expect(potluck.dishes.length).to eq(2)
        end
    end

    # Iteration 3

    describe '#get_all_from_catagory' do
        it 'can return dishes of a certain category' do
            potluck = Potluck.new('7-13-18')
            couscous_salad = Dish.new("Couscous Salad", :appetizer)
            summer_pizza = Dish.new("Summer Pizza", :appetizer)
            roast_pork = Dish.new("Roast Pork", :entre)
            cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
            candy_salad = Dish.new("Candy Salad", :dessert)

            potluck.add_dish(couscous_salad)
            potluck.add_dish(summer_pizza)
            potluck.add_dish(roast_pork)
            potluck.add_dish(cocktail_meatballs)
            potluck.add_dish(candy_salad)

            expect(potluck.get_all_from_catagory(:appetizer)).to eq([couscous_salad, summer_pizza])
            expect(potluck.get_all_from_catagory(:appetizer).first).to eq(couscous_salad)
            expect(potluck.get_all_from_catagory(:appetizer).first.name).to eq('Couscous Salad')
        end
    end

    describe '#menu' do
        it 'can return a menu sorted by category and in alphabetical order' do
            potluck = Potluck.new('7-13-18')
            couscous_salad = Dish.new("Couscous Salad", :appetizer)
            summer_pizza = Dish.new("Summer Pizza", :appetizer)
            roast_pork = Dish.new("Roast Pork", :entre)
            cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
            candy_salad = Dish.new("Candy Salad", :dessert)
            bean_dip = Dish.new("Bean Dip", :appetizer)

            potluck.add_dish(couscous_salad)
            potluck.add_dish(summer_pizza)
            potluck.add_dish(roast_pork)
            potluck.add_dish(cocktail_meatballs)
            potluck.add_dish(candy_salad)
            potluck.add_dish(bean_dip)

            expect(potluck.menu).to eq({:appetizer=>["Bean Dip", "Couscous Salad", "Summer Pizza"],:entre=>["Cocktail Meatballs", "Roast Pork"],:dessert=>["Candy Salad"]})
        end
    end
end

describe '#ratio' do
    it 'returns the float percentage of a single category' do
        potluck = Potluck.new('7-13-18')
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        summer_pizza = Dish.new("Summer Pizza", :appetizer)
        roast_pork = Dish.new("Roast Pork", :entre)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        candy_salad = Dish.new("Candy Salad", :dessert)
        bean_dip = Dish.new("Bean Dip", :appetizer)

        potluck.add_dish(couscous_salad)
        potluck.add_dish(summer_pizza)
        potluck.add_dish(roast_pork)
        potluck.add_dish(cocktail_meatballs)
        potluck.add_dish(candy_salad)
        potluck.add_dish(bean_dip)

        expect(potluck.ratio(:appetizer)).to eq(50.0)
    end
end