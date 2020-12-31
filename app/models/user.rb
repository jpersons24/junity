class User < ApplicationRecord
   has_many :favorite_artists
   has_many :artists, through: :favorite_artists

   
   validates :name, presence: true
   validates :username, presence: true, uniqueness: {case_senstive: false, message: "must be unique"}
   # password_digest to be called password here?
   validates :password, presence: true 
   
   has_secure_password

   # def password
   # end

   # def password=(secret)
   #    pw = BCrypt::Password.create(secret)

   #    self.password_digest = pw
   # end



end
