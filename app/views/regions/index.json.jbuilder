json.array!(@regions) do |region|
  json.extract! region, :id, :region_name, :region_manager_id
  json.url region_url(region, format: :json)
end
