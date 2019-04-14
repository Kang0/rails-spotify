class Review < ApplicationRecord
    validates :rating, presence: true
    validates :content, length: { minimum: 10}, allow_blank: true    
    
    belongs_to :album
    belongs_to :user
    belongs_to :vinyl

    scope :highest_rated, -> { order(rating: :desc) }
    scope :lowest_rated, -> { order(rating: :asc) }
    scope :user, -> (user) { where("user_id = ?", user) }
    scope :recommended, -> { where(recommend: true) }

    def blank_stars
        10 - rating.to_i
    end

end