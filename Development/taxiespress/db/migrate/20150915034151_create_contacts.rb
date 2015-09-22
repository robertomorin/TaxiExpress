class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :name
      t.string :lastname
      t.string :email
      t.string :adress
      t.string :message
      t.integer :phone

      t.timestamps null: false
    end
  end
end
