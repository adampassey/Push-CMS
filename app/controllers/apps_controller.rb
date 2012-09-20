class AppsController < ApplicationController

  def index 
    @apps = App.get
  end

  def show
    @app = App.get_by_id params[:id] 
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