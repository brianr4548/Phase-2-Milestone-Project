class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :review

    #reply
    # validates :reply, presence: :true
   
end
