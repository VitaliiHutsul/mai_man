class InfrastructurePhoto
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  mount_uploader :photo, LocationPhotoUploader
end
