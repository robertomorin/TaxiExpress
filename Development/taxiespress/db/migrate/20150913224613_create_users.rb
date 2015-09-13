class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :login
      t.string :password
      t.string :email
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
