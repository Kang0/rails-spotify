class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_artists
  has_many :artists, through: :user_artists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
