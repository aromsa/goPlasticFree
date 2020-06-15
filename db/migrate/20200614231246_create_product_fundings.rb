class CreateProductFundings < ActiveRecord::Migration[6.0]
  def change
    create_table :product_fundings do |t|
      t.integer :product_id
      t.integer :funding_id
      t.timestamps
    end
  end
end
