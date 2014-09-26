class EmployersController < ApplicationController

  def index
    @title = "All Employers in System"
    #@jobs = Job.paginate(:page => params[:page])
    @employer = Employer.all
    session[:empIndex] = request.original_url
  end

  def new
    @employer = Employer.new
    @title = "Sign Up"
  end

  def create
    @employer = Employer.new(employer_params)
    if @employer.save
      #sign_in @employer#sign_in @user
      flash[:success] = "Successfully registered!!!"
      redirect_to session[:admin]
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def show
    @employer = Employer.find(params[:id])
    @title = @employer.emp_name
    session[:employer] = request.original_url
    session[:emp_name] = @employer.emp_name
  end

  def edit
    @employer = Employer.find(params[:id])
    @title = "Edit Password"
  end

  def update
    @employer = Employer.find(params[:id])
    if @employer.update_attributes(params[:employer].permit(:password))
      flash[:success] = "Password updated."
      redirect_to @employer
    else
      @title = "Edit Password"
      render 'edit'
    end
  end

  def destroy
    Employer.find(params[:id]).destroy
    flash[:success] = "Employer Deleted Successfully."
    redirect_to employers_path
  end

  private

  def employer_params
    params.require(:employer).permit(:emp_name, :email, :salt, :encrypted_password, :password, :contact_person)
  end
end

