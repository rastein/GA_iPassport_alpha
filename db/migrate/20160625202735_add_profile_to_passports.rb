class AddProfileToPassports < ActiveRecord::Migration
  def change
    add_column :passports, :profile_id, :integer
  end
end
