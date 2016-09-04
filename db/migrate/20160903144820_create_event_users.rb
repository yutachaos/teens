class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.integer                 :event_id
      t.integer                 :user_id
      t.string                    :user_file
      t.string                    :mem_comment
      t.timestamps null: false
    end
  end
end
