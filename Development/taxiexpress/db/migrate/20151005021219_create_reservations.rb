class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :passengersquantity
      t.string :vehicletype
      t.text :beginningadress
      t.text :destinationadress
      t.decimal :price
      t.references :vehicle, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :operator, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true
      t.references :paymenttype, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
