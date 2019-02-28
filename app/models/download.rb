class Download
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String, localize: true
  field :text, type: String, localize: true
  field :start_date, type: Date, default: Date.current.tomorrow
  field :ios_link, type: String
  field :show_ios_button, type: Boolean, default: false
  field :android_link, type: String
  field :show_android_button, type: Boolean, default: false

  embeds_many :downloads_photos, cascade_callbacks: true

  accepts_nested_attributes_for :downloads_photos, allow_destroy: true

  validates :title, :text, presence: true
end
