class CreatePaymenttypes < ActiveRecord::Migration
  def change
    create_table :paymenttypes do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
