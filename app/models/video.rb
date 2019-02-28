class Video
  include Mongoid::Document

  field :youtube_link, type: String
  field :title, type: String, localize: true
  field :weight, type: Float
  field :youtube_video_id, type: String

  scope :sort_by_weight, -> { order(weight: :desc) }

  validates :youtube_link, presence: true
  validate :youtube_link_format

  after_validation :set_youtube_video_id

  def youtube_link_format
    return if youtube_link.blank?
    url = youtube_link.strip
    youtube_formats = [
        %r(https?://youtu\.be/(.+)),
        %r(https?://www\.youtube\.com/watch\?v=(.*?)(&|#|$)),
        %r(https?://www\.youtube\.com/embed/(.*?)(\?|$)),
        %r(https?://www\.youtube\.com/v/(.*?)(#|\?|$)),
        %r(https?://www\.youtube\.com/user/.*?#\w/\w/\w/\w/(.+)\b)
      ]
    youtube_formats.find { |format| url =~ format }
    if $1.present?
      @youtube_video_id = $1
      true
    else
      errors.add(:youtube_link, 'невірний формат посилання')
    end
  end


  def set_youtube_video_id
    self.youtube_video_id = @youtube_video_id
  end
end
