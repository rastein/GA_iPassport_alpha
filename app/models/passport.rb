class Passport < ActiveRecord::Base
  validates_presence_of :given_name, :last_name, :date_of_birth, :marital_status,
  :date_of_birth, :authority, :date_of_issue, :date_of_expiration, :number_of_visa_pages,
  :type, :country_of_issue,

  belongs_to :profile,
end
