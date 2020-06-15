class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :cc
      t.string :password
      t.boolean :seed_status
      t.boolean :sprout_status
      t.boolean :tree_status

      t.timestamps
    end
  end
end
