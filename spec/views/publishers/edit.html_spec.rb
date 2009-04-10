require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/publishers/edit.html" do
  before do
    assigns[:publisher] = @publisher = stub_model(Publisher,
      :new_record? => false
    )
  end

  subject do
    render "publishers/edit.html"
    response
  end

  it "should render edit form" do
    should have_tag("form[action=?][method=post]", publisher_path(@publisher)) do
    end
  end
end
