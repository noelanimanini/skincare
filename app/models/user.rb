class User < ApplicationRecord
    has_many :reviews, foreign_key: :reviewer_id
    has_many :reviewees, through: :reviews, source: :reviewee
    
    has_many :products, through: :reviews
    has_many :chemiskins
    has_many :products, through: :chemiskins
    


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
