class NotificationsController < ApplicationController

  # post
  def create
    app = App.get_by_id params[:app_id]
    notification = Notification.new app, { :title => params[:title], :description => params[:description], :URL => params[:URL] }
    notification.send

    flash[:notice] = "<strong>Success!</strong> Notification sent." # will print html_safe
    redirect_to :controller => "apps", :action => "index"
  end

end