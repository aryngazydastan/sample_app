class UsersController < ApplicationController
<<<<<<< HEAD
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save
     flash[:success] = "Welcome to the Sample App!"
     redirect_to @user
    else
      render 'new'
    end
  end

private
  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
=======
  def new
>>>>>>> 5b6eaa2c2149344410c04eb249627d7ab299612e
  end
end
