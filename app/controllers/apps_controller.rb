class AppsController < ApplicationController

  def index 
    @apps = App.get
  end

  def show
    @app = App.get_by_id params[:id] 
  end

  # post
  def create
    app = App.new
    app.appId = params[:appId]
    app.name = params[:name]
    app.save

    flash[:notice] = "<strong>Success!</strong> App created."
    redirect_to :controller => "apps", :action => "index"
  end

end