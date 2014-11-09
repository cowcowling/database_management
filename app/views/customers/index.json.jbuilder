json.array!(@customers) do |customer|
  json.extract! customer, :id, :user, :name, :address, :kind
  json.url customer_url(customer, format: :json)
end
