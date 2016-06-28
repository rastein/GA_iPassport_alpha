# == Schema Information
#
# Table name: passports
#
#  id                   :integer          not null, primary key
#  last_name            :string
#  given_name           :string
#  passport_number      :string
#  date_of_issue        :date
#  date_of_expiration   :date
#  authority            :string
#  type                 :string
#  place_of_birth       :string
#  number_of_visa_pages :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  country_of_issue     :string
#  profile_id           :integer
#

require 'test_helper'

class PassportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
