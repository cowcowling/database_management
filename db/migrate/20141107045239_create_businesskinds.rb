class CreateBusinesskinds < ActiveRecord::Migration
  def change
    create_table :businesskinds do |t|
      t.references :customer
      t.string :category
      t.decimal :gross
      t.decimal :income

      t.timestamps
    end
  end
end
