class AddDestToTrackers < ActiveRecord::Migration
  def change
    add_column :trackers, :dest, :string
  end
end
