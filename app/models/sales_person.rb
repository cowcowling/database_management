class SalesPerson < ActiveRecord::Base
  belongs_to :employee
  belongs_to :branch
end
