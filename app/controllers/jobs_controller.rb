class JobsController < ApplicationController

  def index
    @title = "All Jobs"
    #@jobs = Job.paginate(:page => params[:page])
    @jobs = Job.where('emp_name = ?',session[:emp_name])
    session[:empUser] = request.original_url
  end

  def indexUser
    @title = "All Jobs You have Applied To:"
    @jobs = Job.paginate(:page => params[:page])
  end


  def searchForm
    @job = Job.new
    @title = "Search Jobs"
  end

  def search
    if params[:one] == "1"
    #@job = Job.find_by_sql("select * from jobs where emp_name = '"+params[:keyword]+"'")
    @job = Job.where('deadline > ?', DateTime.now).where('emp_name = ?', params[:keyword])
    elsif params[:two] == "1"
    @job = Job.where('deadline > ?', DateTime.now).where('title = ?', params[:keyword])
    else
    @job = Job.where('deadline > ?', DateTime.now).where('tags = ?', params[:keyword])
    end

    session[:searchURL] = request.original_url
    #@job = Job.where({:emp_name => params[:search][:emp_name]}).all
  end

  def searchFormPublic
    @job = Job.new
    @title = "Search Jobs"
  end

  def searchPublic
    if params[:one] == "1"
      @job = Job.find_by_sql("select * from jobs where emp_name = '"+params[:keyword]+"' AND public = '"+ "1" +"'")
    elsif params[:two] == "1"
      @job = Job.find_by_sql("select * from jobs where title = '"+params[:keyword]+"' AND public = '"+ "1" +"' ")
    else
      @job = Job.find_by_sql("select * from jobs where tags = '"+params[:keyword]+"' AND public = '"+ "1" +"' ")
    end

    session[:searchURL] = request.original_url
    #@job = Job.where({:emp_name => params[:search][:emp_name]}).all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
    @title = "Post a Job"
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "You have posted the job successfully!!"
      session[:empMail] = @job.emp_name
      EmployerNotifier.send_jobsubmit_email(@job).deliver
      redirect_to session[:employer]
    else
      @title = "Post a Job"
      render 'jobs/new'
    end
  end

  def edit
    @job = Job.find(params[:id])
    @title = "Edit Job"
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      flash[:success] = "Job updated."
      redirect_to session[:empUser]
    else
      @title = "Edit Job"
      render 'edit'
    end
  end

  def destroy
    Job.find(params[:id]).destroy
    flash[:success] = "Job Deleted Successfully."
    redirect_to jobs_path
  end





  private

  def job_params
    params.require(:job).permit(:job_ID, :emp_name, :title, :description, :tags, :deadline, :search, :category, :public)
  end

end
