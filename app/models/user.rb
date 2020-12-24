class User < ApplicationRecord
   has_many :favorite_artists
   has_many :artists, through: :favorite_artists
end
