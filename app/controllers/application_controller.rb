class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # layout :layout_by_resource
  puts "ApplicationController"
  # puts devise_controller?
  # puts controller_name

  before_filter :configure_permitted_parameters, if: :devise_controller?

  CATEGORY_NAME = ["000 총류", "집  합", "명  제", "수", "식",
   "400 함수", "500 도형", "600 지수,로그,삼각함수", "700 행렬과 벡터", "800 미분과 적분",
    "900 확률과 통계" ]

  


  protected

  #   def configure_permitted_parameters
  #     puts "configure_permitted_parameters"
  #    	devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:signin)}
  #    	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, 
  #    		:username, :password, :password_confirmation)}
  # end

  def configure_permitted_parameters
    puts "configure_permitted_parameters"
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

  def layout_by_resource
    if devise_controller?
      puts "signin layout"
      "signin"
    else
      puts "application layout"
      "application"
    end
  end

end
