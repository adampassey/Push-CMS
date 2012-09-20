class Notification
  
  include PushapiHelper

  attr_accessor :title, :description, :URL, :orinoco, :myignId, :deviceToken, :appId

  def initialize(app, options = {})
    @appId        = app.appId
    @title        = options[:title]       if options[:title]
    @description  = options[:description] if options[:description]
    @URL          = options[:URL]         if options[:URL]
    @deviceToken  = options[:deviceToken] if options[:deviceToken]
    @orinoco      = options[:orinoco]     if options[:orinoco]
    @myignId      = options[:myignId]     if options[:myignId]
  end

  # Will only send a notification if
  # we're in production.
  def send
    PushapiHelper.api_post("apps/#{self.appId}/notifications", ActiveSupport::JSON.encode(self))
  end

  class << self
    #static
  end

end