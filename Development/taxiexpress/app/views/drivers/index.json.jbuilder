json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :lastname, :email, :password, :vehicle_id
  json.url driver_url(driver, format: :json)
end
