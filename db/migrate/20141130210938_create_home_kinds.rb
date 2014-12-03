class CreateHomeKinds < ActiveRecord::Migration
  def change
    create_table :home_kinds do |t|
      t.references :customer, index: true
      t.boolean :marriage
      t.string :gender
      t.integer :age
      t.decimal :income

      t.timestamps
    end
  end
end
