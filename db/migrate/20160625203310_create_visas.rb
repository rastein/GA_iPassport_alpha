class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :country
      t.date :date_of_issue
      t.date :date_of_expiration
      t.integer :duration
      t.string :visa_type
      t.integer :passport_id

      t.timestamps null: false
    end
  end
end
