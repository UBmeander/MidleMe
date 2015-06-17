json.array!(@midlemes) do |midleme|
  json.extract! midleme, :id, :location_id, :latitude, :longitude
  json.url midleme_url(midleme, format: :json)
end
