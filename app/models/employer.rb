require 'digest'

class Employer < ActiveRecord::Base

  #has_many :jobs, :dependent => :destroy

  validates(:emp_name, :presence => true)
  validates(:contact_person, :presence => true)
  validates :email, :presence => true,:uniqueness => {:case_sensitive => false}
  validates :password, :presence => true,
            :confirmation => true,
            :length => { :within => 6..40}


  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



  validates :password, :presence => true,
            :confirmation => true,
            :length => { :within => 6..40}

  before_save :encrypt_password

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    employer = find_by_email(email)
    return nil  if employer.nil?
    return employer if employer.has_password?(submitted_password)
  end



  private

  def encrypt_password
    self.salt = make_salt unless has_password?(password)
    self.encrypted_password = encrypt(password)
  end

  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end

  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end

end
