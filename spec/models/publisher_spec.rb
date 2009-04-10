require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Publisher do
  subject do
    Publisher.new(:email => "a@a.com", :password => "password", :password_confirmation => "password")
  end

  it "should be valid" do
    should be_valid
  end
end
