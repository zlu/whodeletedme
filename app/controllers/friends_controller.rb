class FriendsController < ApplicationController
  def index
    p facebook_session
    
    head 200
  end
end
