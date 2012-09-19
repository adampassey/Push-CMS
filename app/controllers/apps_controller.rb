class AppsController < ApplicationController

  def index 
    @apps = App.get
    Rails.logger.debug @apps.to_yaml

    # for testing purposes
    #newApp = App.new
    #newApp.appleId = '5D4F84A86DFA5D1F6A8DF4'
    #newApp.name = 'IGN Core'
    #newApp.save
  end

  def show
    Rails.logger.debug "Apps -> show"
  end

=begin
  def show
    @gameSlug = params[:id]
    @maps = Map.all @gameSlug
  end

  def single
    @gameSlug = params[:gameId]
    @map = Map.get(@gameSlug, params[:mapId])
    @map.tile_with_image('/Users/apassey/Desktop/skyrim-map-rev.png') 
  end
=end
end