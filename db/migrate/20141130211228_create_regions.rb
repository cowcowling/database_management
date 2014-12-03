class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :region_name
      t.references :region_manager, index: true

      t.timestamps
    end
  end
end
