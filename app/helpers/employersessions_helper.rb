module EmployersessionsHelper

  def sign_in(employer)
    cookies.permanent.signed[:remember_token] = [employer.id, employer.salt]
    self.current_employer = employer
  end

  def current_employer=(employer)
    @current_employer = employer
  end

  def sign_out
    cookies.delete(:remember_token)
    self.current_employer = nil
  end



  private


  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end
end
