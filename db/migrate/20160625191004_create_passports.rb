class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
      t.string :last_name
      t.string :given_name
      t.string :passport_number
      t.date :date_of_issue
      t.date :date_of_expiration
      t.string :authority
      t.string :type
      t.string :place_of_birth
      t.string :number_of_visa_pages

      t.timestamps null: false
    end
  end
end
