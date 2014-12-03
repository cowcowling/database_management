class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :address
      t.references :store_manager, index: true
      t.integer :sales_number
      t.references :region, index: true

      t.timestamps
    end
  end
end
