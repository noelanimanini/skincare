class Ingredient < ApplicationRecord
    has_many :ingredientproducts
    has_many :products, through: :ingredientproducts
end
