class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :email
      t.decimal :salary

      t.timestamps
    end
  end
end
