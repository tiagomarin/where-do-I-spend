class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
  # end
  def after_sign_in_path_for(_resource_or_scope)
    user_groups_path(current_user)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
