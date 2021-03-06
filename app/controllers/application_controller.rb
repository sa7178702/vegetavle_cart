class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_cart
    current_cart = Cart.find_or_initialize_by(user_id: current_user.id)
  end

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :role, :email, :password ,:gender ,:mobno ,:address ,:user_img)}

  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :role, :email, :password, :current_password ,:gender ,:mobno ,:address ,:user_img)}
end

end
