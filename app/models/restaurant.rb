class Restaurant < ApplicationRecord
    attr_accessor :restaurant

    belongs_to :city
    has_many :reviews
    has_many :users, through: :reviews

    
    
 

end
