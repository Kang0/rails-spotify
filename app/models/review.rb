class Review < ApplicationRecord
    validates :rating, presence: true
    validates :content, length: { minimum: 10}, allow_blank: true    
    
    belongs_to :album
    belongs_to :user

    def blank_stars
        10 - rating.to_i
    end

end