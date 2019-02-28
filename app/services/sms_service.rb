class SMSService
  include Singleton
  attr_accessor :user_name, :token, :from, :lifetime, :base_url

  def configure(config)
    @user_name = config['user_name']
    @token = config['token']
    @from = config['from']
    @lifetime = config['lifetime']
    @base_url = config['base_url']
  end

  def send_message(recipients_arr, text)
    if recipients_arr.any?
      request = prepare_request(recipients_arr, text)
      request.run
    end
  end

  def prepare_request(recipients_arr, text)
    recipients_formated = recipients_arr.join(';')
    Typhoeus::Request.new(
      @base_url,
      method: :post,
      followlocation: true,
      params: {
          username: @user_name,
          token: @token,
          from: @from,
          to: recipients_formated,
          text: text,
          lifetime: @lifetime
      }
    )
  end
end