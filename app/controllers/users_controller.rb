class UsersController < ApplicationController

before_action :signed_in_user, only: [:index, :show, :edit, :update]
before_action :correct_user, only: [:edit, :update]

	def index
		@users = User.paginate(page: params[:page])
	end

	def show
		@user = User.find(params[:id])
	end
  def new
  	@user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:sucsess] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:sucsess] = "User sucsessfully created"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def destroy
    User.find(params[:id].destroy)
    flash[:sucsess] = "User Deleted"
    redirect_to users_url
  end



  private

  	def set_user
  		@user = User.find(params[:id])
  	end
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice:"You are not Authorized! Sign in."
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to (root_url) unless current_user?(@user)
  end
      


end
