class AddEventFile < ActiveRecord::Migration
  def up
        add_column :events ,:file,:string
  end
end
