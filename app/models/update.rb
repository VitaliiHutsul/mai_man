class Update
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date, default: Date.current
  field :title, type: String, localize: true
  field :text, type: String, localize: true

  scope :order_by_date, -> {order(date: :desc)}

  validates :title, presence: true

end
