class StoreManager < ActiveRecord::Base
  belongs_to :employee
  belongs_to :branch
  belongs_to :region
end
