class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :trademark
      t.string :model
      t.integer :year
      t.integer :driver_id

      t.timestamps null: false
    end
  end
end
