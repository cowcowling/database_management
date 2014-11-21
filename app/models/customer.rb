class Customer < ActiveRecord::Base
	has_one :homekind
	has_one :bussinesskind
	belongs_to :user, dependent: :destroy
	accepts_nested_attributes_for :user
end
