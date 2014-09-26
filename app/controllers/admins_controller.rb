class AdminsController < ApplicationController
  protect_from_forgery
  include AdminSessionsHelper
  #before_filter :authenticate, :only => [:create, :new]
  #before_filter :correct_admin, :only => [:create, :new]
  def new
    @admin=Admin.new
    @title = "Sign up"
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
     # sign_in @admin
      flash[:success] = "Successfully signed up!"
     # @admin = Admin.find(params[:id])
      redirect_to session[:admin]
      #redirect_to (:back)
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def show
    session[:admin] = request.original_url
    @admin = Admin.find(params[:id])
    @title = @admin.name
  end

  def edit
    @admin= Admin.find(params[:id])
    @title = "Edit password"
  end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin].permit(:password))
      flash[:success] = "Profile updated."
      redirect_to @admin
    else
      @title = "Edit password"
      render 'edit'
    end
  end

  private
  def authenticate
    deny_access unless signed_in?
  end

  def correct_admin
    @admin = Admin.find(params[:id])
    redirect_to(root_path) unless current_admin?(@admin)
  end

  def admin_params
    params.require(:admin).permit(:name, :email, :password, :salt, :encrypted_password)
  end
end
