class LocationPhoto
  include Mongoid::Document
  mount_uploader :photo, LocationPhotoUploader
end
