class AddCountryToPassports < ActiveRecord::Migration
  def change
    add_column :passports, :country_of_issue, :string
  end
end
