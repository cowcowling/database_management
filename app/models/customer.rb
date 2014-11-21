class Customer < ActiveRecord::Base
	belongs_to :user
	has_one :homekind
	has_one :bussinesskind
	accepts_nested_attributes_for :user
end
