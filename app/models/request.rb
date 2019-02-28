class Request
  include Mongoid::Document
  include Mongoid::Timestamps

  field :phone, type: String
  field :ip, type: String
  index(ip: 1)

  validates :phone, presence: true, length: { is: 10 }
  validate :maximum_requests_from_ip

  scope :used_requests_from_ip, ->(ip) { where(ip: ip, :created_at.gte => 1.hour.ago ) }

  MAXIMUM_REQUESTS_COUNT = 5

  def phone=(number)
    write_attribute(:phone, number.delete(' '))
  end

  def notify_managers!
    send_mail
    send_sms! if Rails.env.production?
  end

  def send_mail
    ManagersMailer.new_request(self).deliver
  end

  def send_sms!
    managers_phones = Manager.only(:phone).for_sms_sending.map(&:phone).compact.uniq
    text = "Novyj zapyt na mymanhattan.com.ua\nnomer: #{self.phone}"

    service = SMSService.instance
    service.send_message(managers_phones, text)
  end

  private

  def maximum_requests_from_ip
    if self.class.used_requests_from_ip(ip).count > MAXIMUM_REQUESTS_COUNT
      errors.add(:ip, 'Exceeded maximum count of requests from ip.')
    end
  end
end
