class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
