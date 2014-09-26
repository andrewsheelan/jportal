class EmployerNotifier < ActionMailer::Base
  default from: "admin@direwolf.com"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_jobsubmit_email(job)
    @job = job
    mail( to: @job.emp_name,
          subject: 'Thanks for submitting a Job on our DireWolf Portal' )
  end

end
