# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  trip_name  :string
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trip < ActiveRecord::Base
  validates_presence_of :trip_name

end
