# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in                  #customerを経由  #emailを参照
  def create                                        #||       #|| 
      @customer = Customer.find_by(email: params[:customer][:email])#からむ検索　find_byで検索したいもの
      if @customer && @customer.is_valid == false　#両方満たしたら　＆＆データが入っているかどうか　is_validがfalseならリダイレクトする
        redirect_to root_path
      else
        super
      end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
