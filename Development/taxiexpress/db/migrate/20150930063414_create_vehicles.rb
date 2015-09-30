class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :trademark
      t.string :model
      t.integer :creationyear

      t.timestamps null: false
    end
  end
end
