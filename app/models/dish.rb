class Dish < ActiveRecord::Base
	has_many :orders
	has_many :employees , through: :orders

  validates_presence_of :name, message:"deve ser preenchido"
end
