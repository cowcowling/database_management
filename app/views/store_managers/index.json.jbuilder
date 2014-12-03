json.array!(@store_managers) do |store_manager|
  json.extract! store_manager, :id, :employee_id, :branch_id, :region_id
  json.url store_manager_url(store_manager, format: :json)
end
