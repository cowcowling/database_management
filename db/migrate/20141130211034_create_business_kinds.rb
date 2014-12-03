class CreateBusinessKinds < ActiveRecord::Migration
  def change
    create_table :business_kinds do |t|
      t.references :customer, index: true
      t.string :category
      t.decimal :gross
      t.decimal :income

      t.timestamps
    end
  end
end
