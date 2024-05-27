class AddFullNameToOrders < ActiveRecord::Migration[версія_рельсів]
  def change
    add_column :orders, :full_name, :string
  end
end
