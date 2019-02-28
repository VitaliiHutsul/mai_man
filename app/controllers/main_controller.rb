class MainController < ApplicationController

  def index
    @request = Request.new

    @main_slides = MainSlider.all
    @location_photo = LocationPhoto.last
    @infrastructure_photos = InfrastructurePhoto.all


    @news = News.order_by_date.limit(3)
    @show_news_archive = News.count > 3

    @updates = Update.order_by_date.limit(6)
    @show_updates_archive = Update.count > 6

    @gallery_photos = Gallery.first.gallery_photos.limit(12)
    @show_gallery_link = Gallery.first.gallery_photos.count > 12

    @videos = Video.sort_by_weight.limit(4)
    @show_video_archive = Video.count > 4

    @construction_conditions = ConstructionCondition.order_by_date.limit(6)
    @show_onstruction_conditions_link = ConstructionCondition.count >6
  end

end
