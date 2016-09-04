class AddEvent < ActiveRecord::Migration
  def up
        add_column :events ,:price,:integer
  end
end
