class Vinyl < ApplicationRecord
    belongs_to :user
    belongs_to :artist
    belongs_to :album
end