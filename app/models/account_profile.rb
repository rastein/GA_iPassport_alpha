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

class AccountProfile < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :date_of_birth, :martial_status
  validates :last_name, length: { minimum: 2 }

  has_many :passports

  # scope :marital_status, -> {where(marital_status: "single")}
  # scope :marital_status, -> (marital_status) { where( "marital_status < ?", marital_status)
end
