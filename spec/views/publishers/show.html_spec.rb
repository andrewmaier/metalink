require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/publishers/show.html" do
  before do
    assigns[:publisher] = @publisher = stub_model(Publisher)
  end

  subject do
    render "publishers/show.html"
    response
  end

  it "should render attributes in <p>" do
  end
end
