class UsersController < ApplicationController
  def index
    @user_fb_ids = @users.all.map(&:fb_id).sort
  end
end
