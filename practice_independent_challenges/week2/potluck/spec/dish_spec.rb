require 'rspec'
require '../lib/dish'
require '../lib/potluck'

describe Dish do
    describe '#initialize' do
        it 'is a dish' do
            dish = Dish.new('Couscous Salad', :appetizer)
            expect(dish).to be_a Dish
        end

        it 'can read a name' do
            dish = Dish.new('Couscous Salad', :appetizer)
            expect(dish.name).to eq('Couscous Salad')
        end

        it 'can read the category' do
            dish = Dish.new('Couscous Salad', :appetizer)
            expect(dish.category).to eq(:appetizer)
        end
    end
end