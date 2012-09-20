class AppsController < ApplicationController

  def index 
    @apps = App.get
    @alert = params[:alert] if params[:alert]
  end

  def show
    @app = App.get_by_id params[:id] 
  end

  # post
  def new
    Rails.logger.debug "Apps#new"
    #@app = App.get_by_id params[:id]
    #@notification = Notification.new @app, params[:title], params[:desc]
  end

end