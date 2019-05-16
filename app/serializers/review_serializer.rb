class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :recommend, :user_id, :album_id, :title, :vinyl_id
  has_many :comments
  belongs_to :album
end
