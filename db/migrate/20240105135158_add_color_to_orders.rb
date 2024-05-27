class AddColorToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :color, :string
  end
end
