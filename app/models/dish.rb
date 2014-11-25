class Dish < ActiveRecord::Base
	has_many :orders
	has_many :employees , through: :orders
end
