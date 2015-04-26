class StudyController < ApplicationController
  before_filter :authenticate_user!, :only => [:home, :new]
  before_filter :signin_user_display

  CATEGORY_NAME = ["000 총류", "집  합", "명  제", "수", "식",
   "400 함수", "500 도형", "600 지수,로그,삼각함수", "700 행렬과 벡터", "800 미분과 적분",
    "900 확률과 통계" ]

  def home
  	puts "home"
  	puts params
    # @user = current_user
    puts @user.username
  	puts request.query_string()
    catagory_number = request.query_string()
  	case catagory_number.to_i
  	when 0
  		redirect_to :root
  	when 1
  		redirect_to :action => "set"
      # return
  	when 2
  		redirect_to :root
  	when 3
  		redirect_to :root
  	when 4
  		redirect_to :root
  	when 5
  		redirect_to :root
  	when 6
  		redirect_to :root
  	when 7
  		redirect_to :root
  	when 8
  		redirect_to :root
  	when 9
  		redirect_to :root
  	else
  		redirect_to root_url
  	end
  end

  def index
  end

  def set
    puts "set enter"
    @category_name = CATEGORY_NAME[1]
    # @user = current_user
    # puts @user.username
    # render(layout: "layouts/study")
  end

  protected

  def signin_user_display
    puts "signin_user_display1"
    @user = current_user
    puts "signin_user_display2"
  end

end
