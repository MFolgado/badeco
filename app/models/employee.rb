class Employee < ActiveRecord::Base
	has_many :orders
	has_many :dishes , through: :orders

  validates_presence_of :name, message:"deve ser preenchido"
  validates_uniqueness_of :name

  def total_pedidos_mes
    orders.pedidos_do_mes.size
  end

end
