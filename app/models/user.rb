class User < ApplicationRecord
  has_secure_password

  has_many :projects
  has_many :pledges

  def total_pledges
    sum = 0
    pledges.each do |pledge|
      sum += pledge
    end
  end

end
