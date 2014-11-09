class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :order
      t.string :date
      t.references :employee
      t.references :customer
      t.references :branch
      t.string :paymentmethod

      t.timestamps
    end
  end
end
