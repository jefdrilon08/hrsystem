class EmployeeStatus < ApplicationRecord
  belongs_to :job_rank
  belongs_to :job_level
  belongs_to :job_title
end
