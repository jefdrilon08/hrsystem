class Cluster < ApplicationRecord
  belongs_to :area
  has_many :branches
end
