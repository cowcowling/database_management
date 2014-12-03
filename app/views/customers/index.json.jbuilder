json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :kind
  json.url customer_url(customer, format: :json)
end
