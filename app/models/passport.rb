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

class Passport < ActiveRecord::Base
  validates_presence_of :given_name, :last_name, :date_of_birth, :marital_status,
  :date_of_birth, :authority, :date_of_issue, :date_of_expiration, :number_of_visa_pages,
  :type, :country_of_issue

  belongs_to :profile
  has_many :visas
end
