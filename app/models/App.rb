class App

  include PushapiHelper
  include AppHelper

  attr_accessor :_id, :appId, :name
  ENDPOINT = "apps"

  def save
    PushapiHelper.api_post(ENDPOINT, ActiveSupport::JSON.encode(self))
  end

  class << self

    def get
      apps = Array.new
      resp = PushapiHelper.api_get(ENDPOINT)
      resp.each do |r|
        apps.push AppHelper.app_from_hash r
      end
      apps
    end

    def get_by_id(id)
      resp = PushapiHelper.api_get("#{ENDPOINT}/#{id}")
      AppHelper.app_from_hash resp
    end

  end

end