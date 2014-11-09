class CreateHomekinds < ActiveRecord::Migration
  def change
    create_table :homekinds do |t|
      t.references :customer
      t.boolean :marriage
      t.string :gender
      t.integer :age
      t.decimal :income

      t.timestamps
    end
  end
end
