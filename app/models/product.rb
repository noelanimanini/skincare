class Product < ApplicationRecord
    belongs_to :brand
    has_many :reviews
    has_many :users, through: :reviews
    has_many :ingredientproducts
    has_many :ingredients, through: :ingredientproducts

    has_many :chemiskins
    has_many :users, through: :chemiskins
end
