class PledgesController < ApplicationController
  before_action :load_project
  # before_action :ensure_logged_in, only: [:create, :destroy]

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = @project.pledges.build(pledge_params)
    @pledge.user = current_user
    if @pledge.save
      redirect_to project_url(@project)
    else
      render :new
    end
  end


  private
  def pledge_params
    params.require(:pledge).permit(:amount, :reward_id)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
