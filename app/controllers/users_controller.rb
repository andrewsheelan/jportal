class UsersController < ApplicationController
  protect_from_forgery
  include SessionsHelper
  before_filter :authenticate, :only => [:edit, :update, :show]
  before_filter :correct_user, :only => [:edit, :update]

  def show
    @user = User.find(params[:id])

    @title = @user.name
    session[:userHP] = request.original_url
    session[:userEmail] = @user.email
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Successfully registered!!!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def new
    @user = User.new
    @title = "Sign Up"
  end

  def edit
    @user = User.find(params[:id])
    @title = "Edit User Profile"
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit User Profile"
      render 'edit'
    end
  end


  private
  def authenticate
    deny_access unless signed_in?
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end
  def user_params
    params.require(:user).permit(:name, :email, :salt, :encrypted_password, :password, :phone_no, :skills, :resume, :coverLetter)
  end
end
