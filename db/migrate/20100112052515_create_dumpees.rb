class CreateDumpees < ActiveRecord::Migration
  def self.up
    create_table :dumpees do |t|
      t.integer :friend_fb_id
      t.integer :reason_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :dumpees
  end
end

