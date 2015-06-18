class Location < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :midleme

	# app/models/location.rb
	geocoded_by :address
	after_validation :geocode

	
end
