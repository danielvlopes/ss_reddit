json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :remember_me
  json.url user_url(user, format: :json)
end
