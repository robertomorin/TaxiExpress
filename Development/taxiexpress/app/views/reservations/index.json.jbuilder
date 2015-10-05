json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :passengersquantity, :vehicletype, :beginningadress, :destinationadress, :price, :vehicle_id, :user_id, :operator_id, :status_id, :paymenttype_id
  json.url reservation_url(reservation, format: :json)
end
