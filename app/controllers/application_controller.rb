class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters,if: :devise_controller?

def after_sign_in_path_for(resource)
  case resource
  when Admin
    admins_items_path
  when Customer
    customers_path
  end
end

  private

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email, :name])
  end

end
