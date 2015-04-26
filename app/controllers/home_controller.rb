class HomeController < ApplicationController
	puts "HomeController enter"
  # before_filter :login_or_not
	# before_filter :authenticate_user!, :only => [:index, :new]

  def index
  	puts "home#index"
  	puts params
  	# puts user_signed_in?
  	# puts current_user 
  	# puts current_user.id
  	# puts current_user.username 
  	# puts current_user.email
  	# puts user_session
  	# puts user_session.blank?
  	# puts devise_controller?
  	# puts controller_name
  
  end

  def new 
  end

	def edit
	end
	
end
