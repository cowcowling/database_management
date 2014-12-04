class Employee < ActiveRecord::Base
	has_one :sales_person
	has_one :store_manager
	has_one :region_manager
end
