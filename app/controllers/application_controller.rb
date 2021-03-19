class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters,if: :devise_controller?


def after_sign_in_path_for(resource)
  case resource
  when Admin
    admins_items_path
  when Customer # ログイン後トップに移動
    root_path
  end
end

# ログアウト後トップに移動
def after_sign_out_path_for(resource)
  root_path
end

  private

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email, :name])
  end

end
