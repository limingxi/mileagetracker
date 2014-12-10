class AddSourceToTrackers < ActiveRecord::Migration
  def change
    add_column :trackers, :source, :string
  end
end
