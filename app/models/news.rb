class News
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date, default: Date.current
  field :title, type: String, localize: true
  field :preview_text, type: String, localize: true
  field :body, type: String, localize: true

  scope :order_by_date, -> {order(date: :desc)}
  scope :latest, ->(news) { order_by_date.ne(id: news.id).limit(3) }

  mount_uploader :preview_image, NewsPreviewUploader

  embeds_many :news_photos, cascade_callbacks: true
  accepts_nested_attributes_for :news_photos, allow_destroy: true

  validates :title, :preview_text, :preview_image, presence: true
end
