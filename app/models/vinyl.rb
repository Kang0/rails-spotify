class Vinyl < ApplicationRecord
    belongs_to :user
    belongs_to :album
    has_many :reviews
end