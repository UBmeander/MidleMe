class Midleme < ActiveRecord::Base
	belongs_to :user
	has_many :locations

# app/models/midleme.rb
	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, :reverse_geocode

end
