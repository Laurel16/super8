class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index , unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :home, unless: :skip_pundit?


  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :remember_me])
  end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
  end

end
