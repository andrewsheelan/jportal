class Jobapplication < ActiveRecord::Base
  default_value_for :status, "Pending"

  validates :job_ID, :presence => true
  validates :emp_name, :presence => true
  validates :email, :presence => true




end
