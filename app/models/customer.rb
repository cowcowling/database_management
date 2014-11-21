class Customer < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :user
	has_one :homekind
	has_one :bussinesskind
=======
	belongs_to :user, dependent: :destroy
>>>>>>> 7690ecbfc09f0ecfbfa5fe9822ce08bc3a47bb5b
	accepts_nested_attributes_for :user
end
