class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :Employee, index: true
      t.references :Dish, index: true
      t.date :date

      t.timestamps
    end
  end
end
