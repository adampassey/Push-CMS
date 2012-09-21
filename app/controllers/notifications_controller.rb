class NotificationsController < ApplicationController

  # post
  def create
    app = App.get_by_id params[:app_id]

    options = {}
    options[:title]       = params[:title]        if params[:title]
    options[:description] = params[:description]  if params[:description]
    options[:URL]         = params[:URL]          if params[:URL]         and not params[:URL].blank?
    options[:orinoco]     = params[:orinoco]      if params[:orinoco]     and not params[:orinoco].blank?
    options[:myignid]     = params[:myignid]      if params[:myignid]     and not params[:myignid].blank?
    options[:deviceToken] = params[:deviceToken]  if params[:deviceToken] and not params[:deviceToken].blank?
    options[:eventType]   = params[:eventType]    if params[:eventType]   and not params[:eventType].blank?
    options[:payload]     = params[:payload]      if params[:payload]     and not params[:payload].blank?
    options[:noAlert]     = 1                     unless params[:alert]   and params[:alert] == "yes"

    notification = Notification.new app, options
    notification.send if Rails.env == "production"
    Rails.logger.debug "Sending Notification:"
    Rails.logger.debug notification.to_json

    flash[:notice] = "<strong>Success!</strong> Notification sent." # will print html_safe
    redirect_to :controller => "apps", :action => "index"
  end

end