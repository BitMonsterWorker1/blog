class BlogPageController < ApplicationController
  def blogpage
      @user = User.find_by_id(session[:user_id])
  end
 

end
