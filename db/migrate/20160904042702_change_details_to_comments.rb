class ChangeDetailsToComments < ActiveRecord::Migration
  def change
    	change_column :comments, :comment, :text
  end
end
