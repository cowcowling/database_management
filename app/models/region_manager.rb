class RegionManager < ActiveRecord::Base
  belongs_to :employee
  belongs_to :region
end
