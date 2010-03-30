class AddIndexToFbUser < ActiveRecord::Migration
  def self.up
    add_index :friends, :fb_id
    add_index :friends, :user_id
  end

  def self.down
    remove_index :friends, :fb_id
    remove_index :friends, :user_id
  end
end
