json.array!(@branches) do |branch|
  json.extract! branch, :id, :address, :manager, :salesnumber, :region
  json.url branch_url(branch, format: :json)
end
