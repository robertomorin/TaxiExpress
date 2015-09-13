json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :login, :password, :email, :profile_id
  json.url user_url(user, format: :json)
end
