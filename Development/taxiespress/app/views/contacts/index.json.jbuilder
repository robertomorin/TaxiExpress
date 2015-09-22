json.array!(@contacts) do |contact|
  json.extract! contact, :id, :user_id, :name, :lastname, :email, :adress, :message, :phone
  json.url contact_url(contact, format: :json)
end
