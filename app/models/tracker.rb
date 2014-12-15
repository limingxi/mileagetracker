class Tracker < ActiveRecord::Base
  attr_accessible :distance, :id, :timestamp, :employee_id, :source, :dest
  belongs_to :employee
end
