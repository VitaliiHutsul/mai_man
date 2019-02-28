class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :locale

  def locale(locale = I18n.default_locale)
    I18n.locale = params[:locale] || locale
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end

  def not_authenticated
    # Make sure that we reference the route from the main app.
    redirect_to main_app.login_path
  end
end
