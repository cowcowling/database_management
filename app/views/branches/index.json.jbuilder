json.array!(@branches) do |branch|
  json.extract! branch, :id, :address, :store_manager_id, :sales_number, :region_id
  json.url branch_url(branch, format: :json)
end
