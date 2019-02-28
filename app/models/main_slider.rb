class MainSlider
  include Mongoid::Document

  mount_uploader :first_photo, MainSliderPhotoUploader
  mount_uploader :second_photo, MainSliderPhotoUploader

  validates :first_photo, :second_photo, presence: true
end
