class CreateSalesPeople < ActiveRecord::Migration
  def change
    create_table :sales_people do |t|
      t.references :employee, index: true
      t.references :branch, index: true

      t.timestamps
    end
  end
end
