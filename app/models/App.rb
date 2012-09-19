class App

  include PushapiHelper

  attr_accessor :appleId, :name
  ENDPOINT = "apps"

  class << self

    def get
      apps = Array.new
      resp = PushapiHelper.api_get(ENDPOINT)
      resp.each do |r|
        tmpApp = App.new
        tmpApp.appleId = r['appID']
        tmpApp.name = r['name']
        apps.push tmpApp
      end
      apps
    end

  end

end