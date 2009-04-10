require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/publishers/index.html" do
  before do
    assigns[:publishers] = [
      stub_model(Publisher),
      stub_model(Publisher)
    ]
  end

  subject do
    render "publishers/index.html"
    response
  end

  it "should render list of publishers" do
  end
end
