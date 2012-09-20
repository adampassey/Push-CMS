class NotificationsController < ApplicationController

  # post
  def create
    app = App.get_by_id params[:app_id]

    options = {}
    options[:title]       = params[:title]        if params[:title]
    options[:description] = params[:description]  if params[:description]
    options[:URL]         = params[:URL]          if params[:URL]
    options[:orinoco]     = params[:orinoco]      if params[:orinoco]
    options[:myignId]     = params[:myignId]      if params[:myignId]

    notification = Notification.new app, options
    notification.send if Rails.env == "production"

    flash[:notice] = "<strong>Success!</strong> Notification sent." # will print html_safe
    redirect_to :controller => "apps", :action => "index"
  end

end