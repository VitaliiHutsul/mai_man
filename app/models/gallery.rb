class Gallery
  include Mongoid::Document
  
  embeds_many :gallery_photos, cascade_callbacks: true
  accepts_nested_attributes_for :gallery_photos, allow_destroy: true

end
