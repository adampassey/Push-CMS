class AppsController < ApplicationController

  def index 
    @apps = App.get
    @alert = params[:alert] if params[:alert]
  end

  def show
    @app = App.get_by_id params[:id] 
  end

  # post
  def create
    Rails.logger.debug "Apps#create"
    app = App.new
    app.appId = params[:appId]
    app.name = params[:name]
    app.save
    redirect_to :controller => "apps", :action => "index", :alert => "App created."
  end

end