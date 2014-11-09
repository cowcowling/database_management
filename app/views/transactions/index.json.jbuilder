json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :order, :date, :employee, :customer, :branch, :paymentmethod
  json.url transaction_url(transaction, format: :json)
end
