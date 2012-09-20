class App

  include PushapiHelper
  include AppHelper

  attr_accessor :_id, :appleId, :name
  ENDPOINT = "apps"

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