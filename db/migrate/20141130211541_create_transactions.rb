class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :customer, index: true
      t.references :product, index: true
      t.references :sales_person, index: true
      t.integer :quantity
      t.string :date
      t.references :branch, index: true
      t.string :paymentmethod

      t.timestamps
    end
  end
end
