require 'spec_helper'

describe FriendsController do
  before(:each) do
    @friend = Friend.new(:fb_id => '1234', :user_id => 1)  
  end

  describe "hide" do
    it "should hide deleted friends" do
      @friend.visible.should be_true
    end
  end
end
