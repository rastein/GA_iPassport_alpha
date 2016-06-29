# == Schema Information
#
# Table name: account_profiles
#
#  id             :integer          not null, primary key
#  last_name      :string
#  first_name     :string
#  middle_name    :string
#  date_of_birth  :date
#  martial_status :string
#  gender         :string
#  religion       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class AccountProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
