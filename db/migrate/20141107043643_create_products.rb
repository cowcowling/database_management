class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :amount
      t.decimal :price
      t.string :kind

      t.timestamps
    end
  end
end
