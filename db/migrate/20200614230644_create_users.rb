class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :cc
      t.string :password
      t.string :status
      t.string :interests
      t.string :img_url

      t.timestamps
    end
  end
end
