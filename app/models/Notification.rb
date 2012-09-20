class Notification
  
  attr_accessor :title, :description, :url, :orinoco, :myignId

  def initialize(app, options = {})
    Rails.logger.debug "Creating notification for app: #{app.to_yaml} and options: #{options.to_yaml}"
  end

  class << self
    #static
  end

end