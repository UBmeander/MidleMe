class Location < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :midleme

	# app/models/location.rb
	geocoded_by :address, :city, :state, :country
	after_validation :geocode, :if => address_changed

	# app/models/location.rb
	reverse_geocoded_by :latitude, :longitude,
  	:address => :location
	after_validation :reverse_geocode, :if => location_changed	

end
