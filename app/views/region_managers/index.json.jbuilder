json.array!(@region_managers) do |region_manager|
  json.extract! region_manager, :id, :employee_id, :region_id
  json.url region_manager_url(region_manager, format: :json)
end
