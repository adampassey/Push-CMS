class NotificationsController < ApplicationController

  # post
  def create
    app = App.get_by_id params[:app_id]
    notification = Notification.new app, { :title => params[:title], :description => params[:description], :URL => params[:URL] }
    notification.send

    redirect_to :controller => "apps", :action => "index", :alert => "Notification sent."
  end

end