class AddVersionToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :version, :integer, :default => 1
  end

  def self.down
    remove_column :users, :version
  end
end
