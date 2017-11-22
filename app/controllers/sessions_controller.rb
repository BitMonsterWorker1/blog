class SessionsController < ApplicationController
  def new
    redirect_to '/', notice: 'You are loged in!' if logged_in?
  end


  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/', notice: 'loged in!'
    else
      redirect_to '/signin', notice: 'Unknown username or password'
    end
  end


  def logout
      session.clear
      redirect_to '/signin', notice: 'You have logged out!'
  end
end
