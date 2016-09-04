class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string               :title
      t.string               :details
      t.string               :movie_url
      t.date                 :event_date
      t.integer            :post_flag
      t.integer            :min_count
      t.integer            :max_count
      t.integer            :user_id
      t.timestamps     null: false
    end
  end
end

