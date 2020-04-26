class CreateSchedule < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer  :user_id
      t.boolean  :invisible, null: false, default: false

      t.timestamps null: false
    end
  end
end
