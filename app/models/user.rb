class User < ActiveRecord::Base
	has_many :locations
	has_many :midlemes

# app/models/user.rb
	geocoded_by :ip_address,
  	:latitude => :lat, :longitude => :locations
	after_validation :geocode

end


