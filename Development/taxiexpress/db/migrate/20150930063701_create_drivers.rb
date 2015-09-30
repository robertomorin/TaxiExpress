class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
