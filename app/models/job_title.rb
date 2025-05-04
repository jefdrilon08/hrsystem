class JobTitle < ApplicationRecord
  belongs_to :job_rank
  belongs_to :job_level
end
