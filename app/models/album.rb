class Album < ApplicationRecord
    belongs_to :artist
    
    has_many :vinyls
    has_many :users, through: :vinyls

    has_many :tracks

    has_many :reviews

end