class NewsPhoto
  include Mongoid::Document
  embedded_in :news
  mount_uploader :photo, NewsPhotoUploader
end
