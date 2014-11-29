class FixColumnName < ActiveRecord::Migration
  def up
  end
  def change
    rename_column :trackers, :user_id, :employee_id
  end
  def down
  end
end
