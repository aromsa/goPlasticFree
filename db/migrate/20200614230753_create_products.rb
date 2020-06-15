class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :original_cost 
      t.integer :goal_amount
      t.string :start_date
      t.string :end_date
      t.string :img_url
      t.text :summary
      t.integer :user_id
      t.timestamps
    end
  end
end
