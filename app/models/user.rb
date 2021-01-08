class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true

    has_secure_password



    def favorite_restaurants
        
    end
end
