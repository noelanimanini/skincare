class Review < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates_presence_of :comment
    validates_presence_of :rating

end
