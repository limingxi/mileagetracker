class Trackers < ActiveRecord::Base
  attr_accessible :distance, :id, :timestamp, :employee_id
  belongs_to :employee
end
