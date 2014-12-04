# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

usertypes = %w(admin, customer, employee)
customer_kinds = %w(home, bussiness)

10.times do
	p = Commerce.price
	r = rand(1..100).to_f / 100
 	Product.create(
 		name: Commerce.product_name,
 		stock_amount: rand(1000),
 		sale_amount: rand(1000),
 		price: p,
 		kind: ["TV", "cell", "tablet", "computer"].sample,
 		description: Lorem.sentence,
 		discount_rate: r,
 		discount_price: p * r
 		)
end

5.times do
	Employee.create(name: Name.name, address: Address.street_address, email: Internet.email, salary: rand(10..100) * 1000)
end

Region.create(region_name: "Western Penn", region_manager_id: 1)

RegionManager.create(employee: Employee.find(1), region_id: 1)

Branch.create(address: Address.street_address, store_manager_id: 1, region_id: 1)
Branch.create(address: Address.street_address, store_manager_id: 2, region_id: 1)

StoreManager.create(employee: Employee.find(2), branch: Branch.find(1), region: Region.find(1))
StoreManager.create(employee: Employee.find(3), branch: Branch.find(2), region: Region.find(1))

SalesPerson.create(employee: Employee.find(4), branch: Branch.find(1))
SalesPerson.create(employee: Employee.find(5), branch: Branch.find(2))

5.times do
	Customer.create(name: Name.name, address: Address.street_address, kind: customer_kinds.sample)
end

10.times do
	Transaction.create(customer: Customer.find(rand(1..5)), product: Product.find(rand(1..10)), sales_person: SalesPerson.find(rand(1..2)), quantity: rand(1..10), date: ['11/27/2014', '11/28/2014', '11/29/2014'].sample, branch: Branch.find(rand(1..2)), paymentmethod: ['creditcard', 'cash'].sample)
end




