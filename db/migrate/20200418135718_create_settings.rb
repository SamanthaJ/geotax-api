class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table  :settings do |t|
      t.string    :targeted_primary_state
      t.integer   :user_id
      t.boolean   :invisible, null: false, default: false

      t.timestamps null: false
    end
  end
end
