class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :id
      t.integer :user_id
      t.float :distance
      t.datetime :timestamp

      t.timestamps
    end
  end
end
