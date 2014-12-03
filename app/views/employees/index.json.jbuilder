json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :address, :email, :salary
  json.url employee_url(employee, format: :json)
end
