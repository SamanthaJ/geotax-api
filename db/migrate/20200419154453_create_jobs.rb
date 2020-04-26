class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer  :user_id
      t.string   :title

      t.timestamps null: false
    end
  end
end
