class Review < ApplicationRecord
    belongs_to :restaurant
    belongs_to :user
    has_many :comments

    validates :rating, presence: true
    validates :description, presence: true
    
end
