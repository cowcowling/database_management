class Transaction < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
  belongs_to :sales_person
  belongs_to :branch
end
