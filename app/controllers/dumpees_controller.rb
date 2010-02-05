class DumpeesController < ApplicationController
  def index
    @dumpees = current_user.dumpees
  end

  def create
    @dumpee = Dumpee.new(:reason_id => params[:dumpee][:reason_id],
                         :friend_fb_id => params[:friend_selector_id],
                         :user_id => current_user.id)
    if @dumpee.save
      redirect_to user_dumpees_path(@current_user.id)
    else
      # TODO cannot dump - oops
    end
  end
end
