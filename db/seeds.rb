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

100.times do
	Homekind.create(
		customer: Customer.create(
			user: User.create(username: Internet.user_name, password: Internet.password, usertype: "customer"), 
			name: Name.name, 
			address: Address.street_address + " " + Address.city + " " + Address.state_abbr + " " + Address.zip, 
			kind: "home"),
		marriage: [true, false].sample,
		gender: ["male", "female"].sample,
		age: rand(100),
		income: rand(1..1000) * 1000
		)
end

