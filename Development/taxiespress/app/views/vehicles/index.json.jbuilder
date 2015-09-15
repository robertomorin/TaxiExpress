json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :trademark, :model, :year, :driver_id
  json.url vehicle_url(vehicle, format: :json)
end
