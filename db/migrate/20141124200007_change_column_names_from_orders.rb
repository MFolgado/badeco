class ChangeColumnNamesFromOrders < ActiveRecord::Migration
  def change
    remove_index :orders, :Employee_id
    remove_index :orders, :Dish_id
    rename_column :orders, :Employee_id, :employee_id
    rename_column :orders, :Dish_id, :dish_id
  end
end
