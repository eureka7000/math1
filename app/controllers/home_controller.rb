class HomeController < ApplicationController
	puts "HomeController enter"
  # before_filter :set_current_user
	# before_filter :authenticate_user!, :only => [:index, :new]

  def index
  	puts "home#index"
  	puts params
  	# puts user_signed_in?
    # puts user_session[:username].empty?
  	# puts current_user 
  	# puts current_user.id
  	# puts current_user.username 
  	# puts current_user.email
  	# user_session
    # user_session[:username] = current_user.username
    # user_session[:useremail] = current_user.email
  	# puts user_session.blank?
  	# puts devise_controller?
  	# puts controller_name
  
  end

  def new 
  end

	def edit
	end

  # private

  # def set_current_user
  #   if user_signed_in? && !user_session.has_value?(current_user.username)
  #     user_session[:userid] = current_user.id
  #     user_session[:username] = current_user.username
  #     user_session[:useremail] = current_user.email
  #     puts user_session
  #   else
  #     puts user_signed_in?
  #     puts user_session
  #     # return 
  #   end
  # end
	
end
