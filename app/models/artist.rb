class Artist < ApplicationRecord
    has_many :vinyls
    has_many :users, through: :vinyls
    has_many :albums
end