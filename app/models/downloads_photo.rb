class DownloadsPhoto
  include Mongoid::Document

  field :weight, type: Float, default: 1.0
  mount_uploader :image, DownloadsPhotoUploader

  embedded_in :download

  validates :image, presence: true

  scope :sort_by_weight, -> { order_by(weight: 'desc') }
end
