class JobapplicationsController < ApplicationController
  def index
    @title = "All Jobs You have Applied"
    @jobapplications = Jobapplication.where('email = ?', session[:userEmail])
    session[:userJobs] = request.original_url
  end

  def indexEmp
    @title = "All Jobs Applied"
    #@jobapplications = Jobapplication.paginate(:page => params[:page])
    @jobapplications = Jobapplication.where('emp_name = ?',session[:emp_name])
    session[:empView] = request.original_url
  end


  def new
    @jobapplication = Jobapplication.new
    @title = "Apply for Job"
  end

  def create
    @jobapplication = Jobapplication.new(jobapplication_params)
    if @jobapplication.save
      flash[:success] = "Successfully applied"
      redirect_to session[:searchURL]
    else
      @title = ""
      flash[:alert] = "Unsuccessful"
      redirect_to searchForm_path
    end
  end

  def edit
    @jobapplication = Jobapplication.find(params[:id])
    @title = "Edit Status of Application"
  end

  def update
    @jobapplication = Jobapplication.find(params[:id])
    if @jobapplication.update_attributes(params[:jobapplication].permit(:status))
      flash[:success] = "Status Updated."
      StatusNotifier.status_email(@jobapplication).deliver
      redirect_to session[:empView]
    else
      @title = "Update Status Job"
      render 'edit'
    end
  end


  def destroy
    Jobapplication.find(params[:id]).destroy
    flash[:success] = "Job Deleted Successfully."
    redirect_to session[:userJobs]
  end

  private



  def jobapplication_params
    params.require(:jobapplication).permit(:job_ID, :email, :emp_name, :status)
  end

end
