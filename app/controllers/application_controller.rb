class ApplicationController < ActionController::Base
protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :phone_number, :address, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password)}
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    case resource.role
    when "admin"
      transactions_path
    when "customer"
      products_path
    else
      root_path
    end
  end
end
