json.array!(@homekinds) do |homekind|
  json.extract! homekind, :id, :customer, :marriage, :gender, :age, :income
  json.url homekind_url(homekind, format: :json)
end
