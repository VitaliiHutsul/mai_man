class VideosController < ApplicationController
  def index
    @request = Request.new
    @videos = Video.sort_by_weight
  end
end
