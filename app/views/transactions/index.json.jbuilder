json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :customer_id, :product_id, :sales_person_id, :quantity, :date, :branch_id, :paymentmethod
  json.url transaction_url(transaction, format: :json)
end
