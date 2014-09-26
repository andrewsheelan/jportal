class Job < ActiveRecord::Base

  #belongs_to :employer
  validates :job_ID, :presence => true

  validates :emp_name, :presence => true

  validates :title, :presence => true
  validates :description, :presence => true
  validates :tags, :presence => true

  validates :deadline, :presence => true

end
