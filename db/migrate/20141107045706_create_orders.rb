class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
