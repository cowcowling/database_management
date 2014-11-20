class Customer < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	accepts_nested_attributes_for :user
end
