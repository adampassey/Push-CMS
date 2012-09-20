class Notification
  
  include PushapiHelper

  attr_accessor :title, :description, :URL, :orinoco, :myignId, :appId

  def initialize(app, options = {})
    @appId        = app.appId
    @title        = options[:title]       if options[:title]
    @description  = options[:description] if options[:description]
    @URL          = options[:URL]         if options[:URL]
    @orinoco      = 0   # this is not coming from orinoco, but needs to send as part of payload
    @myignId      = 0   # same with myignId
  end

  # Will only send a notification if
  # we're in production.
  def send
    PushapiHelper.api_post("apps/#{self.appId}/notifications", ActiveSupport::JSON.encode(self)) if Rails.env == "production"
  end

  class << self
    #static
  end

end