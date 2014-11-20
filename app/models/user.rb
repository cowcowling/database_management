class User < ActiveRecord::Base
	has_one :customer
end
