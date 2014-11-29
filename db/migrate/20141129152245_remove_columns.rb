class RemoveColumns < ActiveRecord::Migration
  def up
	remove_column :trackers, :timestamp
  end

  def down
  end
end
