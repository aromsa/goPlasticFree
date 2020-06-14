class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :cc
      t.string :password
      t.boolean :silver_member
      t.boolean :gold_member
      t.boolean :platinum_member
      #should we call the status something different?  Like Green instead of the platinum status? 
      #To go more with the green/plastic free theme?

      t.timestamps
    end
  end
end
