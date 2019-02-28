class ConstructionConditionPhoto
  include Mongoid::Document
  embedded_in :construction_condition
  mount_uploader :photo, ConstructionConditionPhotoUploader
end
