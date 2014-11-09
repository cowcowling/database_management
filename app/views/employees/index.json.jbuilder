json.array!(@employees) do |employee|
  json.extract! employee, :id, :user, :name, :address, :email, :title, :salary, :branch
  json.url employee_url(employee, format: :json)
end
