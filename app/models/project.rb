class Project < ApplicationRecord
  belongs_to :user
  has_many :rewards
  has_many :pledges

  accepts_nested_attributes_for :rewards
end
