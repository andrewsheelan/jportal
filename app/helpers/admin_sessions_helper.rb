module AdminSessionsHelper
  def sign_in(admin)
    cookies.permanent.signed[:remember_token] = [admin.id, admin.salt]
    #admin.update_attribute(:remember_token, Admin.encrypt(remember_token))
    self.current_admin = admin
  end

  def current_admin=(admin)
    @current_admin = admin
  end
  def deny_access
    redirect_to "/admin/signin", :notice => "Please sign in to access this page."
  end
  def current_admin
    @current_admin ||= admin_from_remember_token
  end

  def current_admin?(admin)
    admin == current_admin
  end

  def signed_in?
    !current_admin.nil?
  end

  def admin_from_remember_token
    Admin.authenticate_with_salt(*remember_token)
  end


  def sign_out
    cookies.delete(:remember_token)
    self.current_admin = nil
  end

   # def self.authenticate_with_salt(id, cookie_salt)
    #  admin = find_by_id(id)
     # (admin && admin.salt == cookie_salt) ? admin : nil
    #end

  private
  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end
end
