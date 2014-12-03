class CreateRegionManagers < ActiveRecord::Migration
  def change
    create_table :region_managers do |t|
      t.references :employee, index: true
      t.references :region, index: true

      t.timestamps
    end
  end
end
