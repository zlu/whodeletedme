class UsersController < ApplicationController
  def index
    @user_ids = User.all.map(&:fb_id).sort
  end
end
