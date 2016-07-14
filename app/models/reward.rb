class Reward < ApplicationRecord
  belongs_to :project, optional: true
  has_many :pledges
end
