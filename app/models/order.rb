class Order < ActiveRecord::Base
  belongs_to :employee
  belongs_to :dish

  validates_presence_of :employee_id, message:"deve ser preenchido"
  validates_presence_of :dish_id, message:"deve ser preenchido"
  validates_presence_of :date, message:"deve ser preenchido"

  scope :pedidos_do_mes, -> {where(date: [Date.today.beginning_of_month..Date.today.end_of_month])}
end
