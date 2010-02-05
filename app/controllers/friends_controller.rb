class FriendsController < ApplicationController
  def index
    remote_friends_ids = facebook_session.user.friend_ids
    p "++++++++++++++++++++++remote_friends_ids+++++++++++++++++++"
    p facebook_session.id
    #fb_user= Facebooker::User.new(:id => 4118, :session => facebook_session)
    p remote_friends_ids
    local_friends_ids = current_user.friends.map(&:fb_id)
    p "++++++++++++++++++++++local_friends_ids+++++++++++++++++"
    p local_friends_ids
    @missing_friends_ids = local_friends_ids - remote_friends_ids
    new_friends_ids = remote_friends_ids - local_friends_ids
    unless new_friends_ids.nil?
      p "++++++++++++++++++++new_friends_ids++++++++++++++++++"
      p new_friends_ids
      id_array = []
      new_friends_ids.each do |id|
        id_array = id_array + [{ :fb_id => id.to_s }]
      end
      current_user.friends.create(id_array)
    end
  end
end
