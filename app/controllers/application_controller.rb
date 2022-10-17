class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, except: [:top,:about]

   before_action :configure_permitted_parameters, if: :devise_controller?

  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name_first, :name_second, :name_firdt_rubi, :name_second_rubi, :tel, :bar_name, :bar_tel, :address, :post_code])
  end
end
