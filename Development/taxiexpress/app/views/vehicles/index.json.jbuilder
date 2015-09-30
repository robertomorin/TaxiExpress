json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :trademark, :model, :creationyear
  json.url vehicle_url(vehicle, format: :json)
end
