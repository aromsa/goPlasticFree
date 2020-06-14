class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost 
      t.integer :goal_amount
      t.date :start_date
      t.date :end_date
      t.string :img_url
      t.text :summary
      t.integer :user_id

      t.timestamps
    end
  end
end
