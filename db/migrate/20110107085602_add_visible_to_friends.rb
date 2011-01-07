class AddVisibleToFriends < ActiveRecord::Migration
  def self.up
    add_column :friends, :visible, :boolean, :default => true
  end

  def self.down
    remove_column :friends, :visible
  end
end
