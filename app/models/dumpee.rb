class Dumpee < ActiveRecord::Base
  belongs_to :user
  belongs_to :reason
  belongs_to :friend, :foreign_key => :friend_fb_id
end

