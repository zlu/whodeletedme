class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :fb_id, :limit => 20
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
