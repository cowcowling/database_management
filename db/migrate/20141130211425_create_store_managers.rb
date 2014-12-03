class CreateStoreManagers < ActiveRecord::Migration
  def change
    create_table :store_managers do |t|
      t.references :employee, index: true
      t.references :branch, index: true
      t.references :region, index: true

      t.timestamps
    end
  end
end
