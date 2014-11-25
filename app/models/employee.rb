class Employee < ActiveRecord::Base
	has_many :orders
	has_many :dishes , through: :orders

  def total_pedidos_mes
    orders.pedidos_do_mes.size
  end

end
