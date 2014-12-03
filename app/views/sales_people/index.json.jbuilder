json.array!(@sales_people) do |sales_person|
  json.extract! sales_person, :id, :employee_id, :branch_id
  json.url sales_person_url(sales_person, format: :json)
end
