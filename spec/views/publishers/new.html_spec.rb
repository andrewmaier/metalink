require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/publishers/new.html" do
  before do
    assigns[:publisher] = stub_model(Publisher,
      :new_record? => true
    )
  end

  subject do
    render "publishers/new.html"
    response
  end

  it "should render new form" do
    should have_tag("form[action=?][method=post]", publishers_path) do
    end
  end
end
