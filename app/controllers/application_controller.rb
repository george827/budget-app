class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |user_params| user_params.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:name, :email, :password)
    end
  end

  def after_sign_in_path_for(_resource)
    groups_path
  end
end
