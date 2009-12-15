class CreateFriends < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.string :fb_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :friends
  end
end
