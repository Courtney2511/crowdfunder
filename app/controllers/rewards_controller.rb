class RewardsController < ApplicationController
  def new
    @reward = Reward.new
  end
end
