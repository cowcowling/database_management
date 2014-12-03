class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock_amount
      t.integer :sale_amount
      t.decimal :price
      t.string :kind
      t.string :image
      t.string :description
      t.decimal :discount_rate
      t.decimal :discount_price

      t.timestamps
    end
  end
end
