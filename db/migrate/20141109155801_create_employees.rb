class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :user
      t.string :name
      t.string :address
      t.string :email
      t.string :title
      t.decimal :salary
      t.references :branch

      t.timestamps
    end
  end
end
