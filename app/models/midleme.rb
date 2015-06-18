class Midleme < ActiveRecord::Base

	belongs_to :user
	has_many :locations

	# app/models/midleme.rb
	geocoded_by :address
	after_validation :geocode

end
