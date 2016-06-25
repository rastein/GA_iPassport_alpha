class Trip < ActiveRecord::Base
  validates_presence_of :trip_name

end
