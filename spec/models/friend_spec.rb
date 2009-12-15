require 'spec_helper'

describe Friend do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Friend.create!(@valid_attributes)
  end
end
