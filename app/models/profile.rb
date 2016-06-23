class Profile < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :date_of_birth, :marital_status,
  validates :last_name, length: {minimum 2}

  # scope :marital_status, -> {where(marital_status: "single")}
  # scope :marital_status, -> (marital_status) { where( "marital_status < ?", marital_status)}
end
