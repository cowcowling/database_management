json.array!(@admins) do |admin|
  json.extract! admin, :id, :employee_id, :password
  json.url admin_url(admin, format: :json)
end
