class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer                 :event_id
      t.string                    :comment
      t.integer                 :user_id
      t.timestamps null: false
    end
  end
end
