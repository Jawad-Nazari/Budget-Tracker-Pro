class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email name password password_confirmation])
  end

  def authenticate_user!
    if user_signed_in?
      users_path
    else
      redirect_to new_user_session_path unless devise_controller?
    end
  end
end
