json.array!(@businesskinds) do |businesskind|
  json.extract! businesskind, :id, :customer, :category, :gross, :income
  json.url businesskind_url(businesskind, format: :json)
end
