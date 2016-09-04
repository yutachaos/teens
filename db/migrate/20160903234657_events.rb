class Events < ActiveRecord::Migration
  def up
        add_column :events ,:theme ,:string
  end
end
