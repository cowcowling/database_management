json.array!(@home_kinds) do |home_kind|
  json.extract! home_kind, :id, :customer_id, :marriage, :gender, :age, :income
  json.url home_kind_url(home_kind, format: :json)
end
