json.array!(@products) do |product|
  json.extract! product, :id, :name, :amount, :price, :kind
  json.url product_url(product, format: :json)
end
