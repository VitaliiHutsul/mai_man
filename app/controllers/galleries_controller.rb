class GalleriesController < ApplicationController
  def index
    @request = Request.new
    @gallery_photos = Gallery.first.gallery_photos.all
  end
end
