class CreateAccountProfiles < ActiveRecord::Migration
  def change
    create_table :account_profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.date :date_of_birth
      t.string :martial_status
      t.string :gender
      t.string :religion

      t.timestamps null: false
    end
  end
end
