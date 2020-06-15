class CreateFundings < ActiveRecord::Migration[6.0]
  def change
    create_table :fundings do |t|
      t.integer :user_id
      t.float :amount
      t.timestamps
    end
  end
end
