class CreateMercedesCars < ActiveRecord::Migration[7.1]
  def change
    create_table :mercedes_cars do |t|
      t.string :model
      t.integer :year
      t.string :color
      t.string :owner_name
      t.string :contact_info

      t.timestamps
    end
  end
end
