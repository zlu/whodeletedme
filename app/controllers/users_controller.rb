class UsersController < ApplicationController
  def index
    @all_user_fb_ids = User.all.map(&:fb_id).sort
    @user_fb_ids = @all_user_fb_ids.paginate({ :page => params[:page], :per_page => 10 })
  end
end
