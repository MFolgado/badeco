class HomesController < ApplicationController

  def index
    @orders = Order.where(date: [Date.today.beginning_of_month..Date.today.end_of_month])
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @employees = Employee.all
    
  end

  def show
    @orders = Order.where(date: [Date.today.beginning_of_month..Date.today.end_of_month])
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @employees = Employee.all
    @employees = Employee.paginate(:page => params[:page], :per_page => 7)
  end
end
