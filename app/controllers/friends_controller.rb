class FriendsController < ApplicationController
  def index
    remote_friends_ids = facebook_session.user.friend_ids
    p "++++++++++++++++++++++remote_friends_ids+++++++++++++++++++"
    p facebook_session.id
    p remote_friends_ids
    local_friends_ids = current_user.friends.map(&:fb_id)
    p "++++++++++++++++++++++local_friends_ids+++++++++++++++++"
    p local_friends_ids
    populate_friends(local_friends_ids) if current_user.version == "1"
    @missing_friends_ids = local_friends_ids - remote_friends_ids
    p "++++++++++++++++++++++missing friends+++++++++++++++++++"
    p @missing_friends_ids
    new_friends_ids = remote_friends_ids - local_friends_ids
    unless new_friends_ids.nil?
      p "++++++++++++++++++++new_friends_ids++++++++++++++++++"
      p new_friends_ids
      new_friends = facebook_session.users(new_friends_ids, [:name])
      friend_array = []
      new_friends.each do |friend|
        friend_array = friend_array + [{ :fb_id => friend.uid.to_s, :name => friend.name }]
      end
      current_user.friends.create(friend_array)
    end

    populate_friends(remote_friends_ids)
  end

  private

  # create friends with their id and name
  # name is important because later we can always know regardless of their privacy setting
  # because otherwise we may not be able to obtain their name after being unfriended
  def populate_friends(local_ids)
    friends = facebook_session.users(local_ids, [:name])
    friends.each do |friend|
      local_friend = Friend.find_by_fb_id(friend.uid.to_s)
      local_friend.update_attribute(:name, friend.name)
    end
  end
end