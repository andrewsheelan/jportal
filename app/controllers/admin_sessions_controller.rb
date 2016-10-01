class AdminSessionsController < ApplicationController
  include AdminSessionsHelper
  def new
    @title = "Sign in"
  end
  def create
    admin = Admin.authenticate(params[:admin_session][:email],
                               params[:admin_session][:password])
    if admin.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      #render 'new'
      redirect_to '/admin/signin'
    else
      session[:adminEmail] = admin.email
      sign_in admin
      redirect_to admin
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
