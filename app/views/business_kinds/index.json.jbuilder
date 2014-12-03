json.array!(@business_kinds) do |business_kind|
  json.extract! business_kind, :id, :customer_id, :category, :gross, :income
  json.url business_kind_url(business_kind, format: :json)
end
