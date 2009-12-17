class UsersController < ApplicationController
  def index
    @user_fb_ids = Users.all.map(&:fb_id).sort
  end
end
