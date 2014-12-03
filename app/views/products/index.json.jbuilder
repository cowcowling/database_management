json.array!(@products) do |product|
  json.extract! product, :id, :name, :stock_amount, :sale_amount, :price, :kind, :image, :description, :discount_rate, :discount_price
  json.url product_url(product, format: :json)
end
