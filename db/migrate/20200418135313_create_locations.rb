class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.decimal  :latitude, precision: 10, scale: 6
      t.decimal  :longitude, precision: 10, scale: 6 
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
