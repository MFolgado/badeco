class Order < ActiveRecord::Base
  belongs_to :employee
  belongs_to :dish

  scope :pedidos_do_mes, -> {where(date: [Date.today.beginning_of_month..Date.today.end_of_month])}
end
