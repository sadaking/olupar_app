class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:postal_code])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prefecture_code])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:city])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:building])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])
  end
end
