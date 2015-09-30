json.array!(@paymenttypes) do |paymenttype|
  json.extract! paymenttype, :id, :name
  json.url paymenttype_url(paymenttype, format: :json)
end
