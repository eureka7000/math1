class SetController < ApplicationController
	puts "SetController"

	def home
		puts "enter set home"
		puts params
    @user = current_user
    puts @user.username
  	puts request.query_string()
    catagory_number = request.query_string()
    case catagory_number.to_i
    when 0
      redirect_to :root
    when 1
      redirect_to :action => "set102"
      # return
    when 2
      redirect_to :action => "set103"
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

  def set101
  end

  def set102
    @category_name = CATEGORY_NAME[1]
    puts "set102"
    @user = current_user
    render(layout: "layouts/demo")

  end

  def set103
  	@category_name = CATEGORY_NAME[1]
  	puts "set103"
  	@user = current_user
  	render(layout: "layouts/set")
  end

  def set104
  end
end
