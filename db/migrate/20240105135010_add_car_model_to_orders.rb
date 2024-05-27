class AddCarModelToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :car_model, :string
  end
end
