class PublishersController < ApplicationController

  # GET /publishers/1
  def show
    @publisher = Publisher.find(params[:id])
  end

  # GET /publishers/new
  def new
    @publisher = Publisher.new
  end

  # GET /publishers/1/edit
  def edit
    @publisher = Publisher.find(params[:id])
  end

  # POST /publishers
  def create
    @publisher = Publisher.new(params[:publisher])
    if @publisher.save
      flash[:success] = 'Publisher was successfully created.'
      redirect_to(@publisher)
    else
      render :action => "new"
    end
  end

  # PUT /publishers/1
  def update
    @publisher = Publisher.find(params[:id])
    if @publisher.update_attributes(params[:publisher])
      flash[:notice] = 'Publisher was successfully updated.'
      redirect_to(@publisher)
    else
      render :action => "edit"
    end
  end

  # DELETE /publishers/1
  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    redirect_to(publishers_path)
  end

end
