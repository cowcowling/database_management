json.array!(@users) do |user|
  json.extract! user, :id, :password, :usertype
  json.url user_url(user, format: :json)
end
