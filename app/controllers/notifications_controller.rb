class NotificationsController < ApplicationController

  # post
  def create
    #app = App.get_by_id params[:id]
    #@notification = Notification.new app, params[:title], params[:desc]
    redirect_to :controller => "apps", :action => "index", :alert => "Notification sent."
  end

end