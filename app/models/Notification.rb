class Notification
  
  include PushapiHelper

  attr_accessor :title, :description, :URL, :orinoco, :myignId, :appId

  def initialize(app, options = {})
    @appId        = app.appleId
    @title        = options[:title]       if options[:title]
    @description  = options[:description] if options[:description]
    @URL          = options[:URL]         if options[:URL]
    @orinoco      = 0   # this is not coming from orinoco, but needs to send as part of payload
    @myignId      = 0   # same with myignId
  end

  def send
    PushapiHelper.api_post("apps/#{self.appId}/notifications", ActiveSupport::JSON.encode(self))
  end

  class << self
    #static
  end

end