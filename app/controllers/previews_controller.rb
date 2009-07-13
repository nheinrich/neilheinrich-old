class PreviewsController < ApplicationController

  def index
    @previews = Preview.find(:all)
  end
  
  def new
    @preview = Preview.new
  end

  def create
    @preview = Preview.new(params[:preview])
    if @preview.save
      flash[:notice] = 'Preview was successfully created.'
      redirect_to preview_url(@preview)     
    else
      render :action => :new
    end
  end
  
  def show
    @preview = Preview.find(params[:id])
  end
end


