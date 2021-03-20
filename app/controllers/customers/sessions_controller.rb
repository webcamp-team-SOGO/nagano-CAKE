# frozen_string_literal: true

class Customers::SessionsController < Devise::SessionsController
  before_action :reject_inactive_customer, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
   def create
     super
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  def reject_inactive_customer
    @customer = Customer.find(params[:email][:name])
    byebug
    if @customer
      if @customer.valid_password?(params[:email][:password]) && !@customer.is_valid
        redirect_to new_customer_session_path
      end
    end
  end


  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  def after_sign_in_path_for(resource)
    customer_path(resource.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end
