class Notification
  
  include PushapiHelper

  attr_accessor :title, :description, :URL, :orinoco, :myignId, :deviceToken, :appId, :eventType, :payload, :noAlert

  def initialize(app, options = {})
    @appId        = app.appId
    @title        = options[:title]       if options[:title]
    @description  = options[:description] if options[:description]
    @URL          = options[:URL]         if options[:URL]
    @deviceToken  = options[:deviceToken] if options[:deviceToken]
    @orinoco      = options[:orinoco]     if options[:orinoco]
    @myignid      = options[:myignid]     if options[:myignid]
    @eventType    = options[:eventType]   if options[:eventType]
    @payload      = options[:payload]     if options[:payload]
    @noAlert      = options[:noAlert]     if options[:noAlert]

  end

  # Will only send a notification if
  # we're in production.
  def send
    if @eventType and @payload
      PushapiHelper.api_post("orinoco", ActiveSupport::JSON.encode(self))
      # will also need to support "/social/" endpoint...
    else
      PushapiHelper.api_post("apps/#{self.appId}/notifications", ActiveSupport::JSON.encode(self))
    end
  end

  class << self
    #static
  end

end