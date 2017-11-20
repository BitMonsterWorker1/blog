class UsersController < ApplicationController
  def new
  end

  def show
  end


  def create
    @user = User.new(user_params)
    if @user.save
        session[:user_id] = @user.id
        redirect_to '/dashboard', notice: 'U have signed up!'
      else
        redirect_to new_user_path, notice: "error:
        \n#{@user.errors.full_messages.join('/n')}"
    end
  end
 private

 def user_params
   params.require(:user).permit(:username, :password)

 end
