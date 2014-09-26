class StatusNotifier < ActionMailer::Base
  default from: "admin@direwolf.com"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def status_email(jobapplication)
    @jobapplication = jobapplication
    mail( to: @jobapplication.email,
          subject: 'Your Job Application Status has changed' )
  end
end
