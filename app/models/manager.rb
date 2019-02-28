class Manager
  include Mongoid::Document
  field :email, type: String
  field :phone, type: Integer
  field :send_sms, type: Mongoid::Boolean, default: false

  scope :for_sms_sending, ->{ where(send_sms: true) }
end
