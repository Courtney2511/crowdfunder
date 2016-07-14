class PledgesController < ApplicationController

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = @project.pledges.build(pledge_params)
    @pledge.user = current_user
    if @pledge.save
      redirect_to projects_url(@project)
    else
      render :new
    end
  end


  private
  def pledge_params
    params.require(:pledge).permit(:amount, :reward_id)
  end
end
