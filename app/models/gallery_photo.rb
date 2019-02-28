class GalleryPhoto
  include Mongoid::Document
  embedded_in :gallery
  mount_uploader :photo, GalleryPhotoUploader
end
