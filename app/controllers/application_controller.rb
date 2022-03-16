class ApplicationController < ActionController::Base

    before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
  end

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path
    end
  end

end
