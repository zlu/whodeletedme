class UsersController < ApplicationController
  def index
    @user_fb_ids = User.all.map(&:fb_id).sort
  end
end
