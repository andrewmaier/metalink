require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PublishersController do

  def mock_publisher(stubs={})
    @mock_publisher ||= mock_model(Publisher, stubs)
  end

  describe "responding to GET show" do

    it "should expose the requested publisher as @publisher" do
      Publisher.should_receive(:find).with("37").and_return(mock_publisher)
      get :show, :id => "37"
      assigns[:publisher].should equal(mock_publisher)
    end

  end

  describe "responding to GET new" do

    it "should expose a new publisher as @publisher" do
      Publisher.should_receive(:new).and_return(mock_publisher)
      get :new
      assigns[:publisher].should equal(mock_publisher)
    end

  end

  describe "responding to GET edit" do

    it "should expose the requested publisher as @publisher" do
      Publisher.should_receive(:find).with("37").and_return(mock_publisher)
      get :edit, :id => "37"
      assigns[:publisher].should equal(mock_publisher)
    end

  end

  describe "responding to POST create" do

    describe "with valid params" do

      it "should expose a newly created publisher as @publisher" do
        Publisher.should_receive(:new).with({'these' => 'params'}).and_return(mock_publisher(:save => true))
        post :create, :publisher => {:these => 'params'}
        assigns(:publisher).should equal(mock_publisher)
      end

      it "should redirect to the created publisher" do
        Publisher.stub!(:new).and_return(mock_publisher(:save => true))
        post :create, :publisher => {}
        response.should redirect_to(publisher_url(mock_publisher))
      end

    end

    describe "with invalid params" do

      it "should expose a newly created but unsaved publisher as @publisher" do
        Publisher.stub!(:new).with({'these' => 'params'}).and_return(mock_publisher(:save => false))
        post :create, :publisher => {:these => 'params'}
        assigns(:publisher).should equal(mock_publisher)
      end

      it "should re-render the 'new' template" do
        Publisher.stub!(:new).and_return(mock_publisher(:save => false))
        post :create, :publisher => {}
        response.should render_template('new')
      end

    end

  end

  describe "responding to PUT udpate" do

    describe "with valid params" do

      it "should update the requested publisher" do
        Publisher.should_receive(:find).with("37").and_return(mock_publisher)
        mock_publisher.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :publisher => {:these => 'params'}
      end

      it "should expose the requested publisher as @publisher" do
        Publisher.stub!(:find).and_return(mock_publisher(:update_attributes => true))
        put :update, :id => "1"
        assigns(:publisher).should equal(mock_publisher)
      end

      it "should redirect to the publisher" do
        Publisher.stub!(:find).and_return(mock_publisher(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(publisher_url(mock_publisher))
      end

    end

    describe "with invalid params" do

      it "should update the requested publisher" do
        Publisher.should_receive(:find).with("37").and_return(mock_publisher)
        mock_publisher.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :publisher => {:these => 'params'}
      end

      it "should expose the publisher as @publisher" do
        Publisher.stub!(:find).and_return(mock_publisher(:update_attributes => false))
        put :update, :id => "1"
        assigns(:publisher).should equal(mock_publisher)
      end

      it "should re-render the 'edit' template" do
        Publisher.stub!(:find).and_return(mock_publisher(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "responding to DELETE destroy" do

    it "should destroy the requested publisher" do
      Publisher.should_receive(:find).with("37").and_return(mock_publisher)
      mock_publisher.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "should redirect to the publishers list" do
      Publisher.stub!(:find).and_return(mock_publisher(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(publishers_path)
    end

  end

end
