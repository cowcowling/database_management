class Branch < ActiveRecord::Base
  belongs_to :store_manager
  belongs_to :region
end
