module AppHelper
  
  class << self

    def app_from_hash(h)
      tmpApp = App.new
      tmpApp.appleId = h['appId']
      tmpApp.name = h['name']
      tmpApp
    end

  end

end