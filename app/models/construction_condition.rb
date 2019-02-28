class ConstructionCondition
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date, default: Date.current
  field :title, type: String, localize: true
  field :body, type: String, localize: true

  scope :order_by_date, -> {order(date: :desc)}

  mount_uploader :preview_image, ConstructionConditionPreviewUploader

  embeds_many :construction_condition_photos, cascade_callbacks: true
  accepts_nested_attributes_for :construction_condition_photos, allow_destroy: true

  validates :date, :title, :preview_image, presence: true
end
