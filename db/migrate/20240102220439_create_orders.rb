class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:orders)
      create_table :orders do |t|
        t.string :full_name
        t.string :email
        t.string :phone
        t.string :car_model
        t.string :color
        t.text :message

        t.timestamps
      end
    end
  end
end
