class User < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/users/sign_up'
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confimation)
    end

end