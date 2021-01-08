class User < ApplicationRecord
    has_many :reviews
    has_many :products, through: :reviews
    
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :city, presence: true
    validates :state, presence: true
    validates :bio, presence: true
    has_secure_password

    def print_name
        self.username
    end

    
    def self.most_reviews
        self.all.max_by { |user| user.reviews.length }
    end

    def self.most_chemiskins
        self.all.max_by{|user| user.chemiskins.length}
    end


end
