class AddFbNameToFriends < ActiveRecord::Migration
  def self.up
    add_column :friends, :name, :string
  end

  def self.down
    remove_column :friends, :name
  end
end
