json.array!(@operators) do |operator|
  json.extract! operator, :id, :name, :lastname, :mail, :password
  json.url operator_url(operator, format: :json)
end
