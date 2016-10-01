class EmployersessionsController < ApplicationController
  def new
    @title = "Sign In"
  end

  def create
    employer = Employer.authenticate(params[:employersession][:email],
                             params[:employersession][:password])
    if employer.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      session[:employerEmail] = employer.email
      sign_in employer
      redirect_to employer # Sign the user in and redirect to the user's show page.
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
