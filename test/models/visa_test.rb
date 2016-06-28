# == Schema Information
#
# Table name: visas
#
#  id                 :integer          not null, primary key
#  country            :string
#  date_of_issue      :date
#  date_of_expiration :date
#  duration           :integer
#  visa_type          :string
#  passport_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class VisaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
