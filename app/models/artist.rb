class Artist < ApplicationRecord
   has_many :favorite_artists
   has_many :events
   has_many :songs
   has_many :users, through: :favorite_artists 
   has_many :venues, through: :events
end
