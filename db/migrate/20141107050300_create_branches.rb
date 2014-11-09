class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :address
      t.string :manager
      t.integer :salesnumber
      t.references :region

      t.timestamps
    end
  end
end
