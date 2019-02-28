class ManagersMailer < ApplicationMailer
  default from: 'no-reply@manhatten.if.ua'

  def new_request(user_request)
    @user_request = user_request
    @managers = Manager.only(:email).all
    mail(
      bcc: @managers.map(&:email).compact.uniq,
      subject: "Новий контакт на mymanhattan.com.ua"
    )
  end
end
