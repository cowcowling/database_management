json.array!(@orders) do |order|
  json.extract! order, :id, :product, :price, :quantity
  json.url order_url(order, format: :json)
end
