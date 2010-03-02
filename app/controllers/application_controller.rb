# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  ensure_authenticated_to_facebook

  helper_attr :current_user
  attr_accessor :current_user
  before_filter :set_current_user

  def set_current_user
    puts "++++++++++++++in set_current_user++++++++++++++"
    unless params["fb_sig_user"].nil?
      self.current_user = User.find_or_create_by_fb_id(params["fb_sig_user"])
      puts "++++++++++++++located user+++++++++++++++++++++" + current_user.fb_id
    else
      puts "+++++++++++++++could not locate user+++++++++++++++"
    end
  end

end
