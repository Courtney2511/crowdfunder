class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @pledge = Pledge.new
  end

  def new
    @project = Project.new
    @project.rewards.build
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user #Must assign the current_user to the project being created
    if @project.save
      redirect_to projects_url(@project)
    else
      render :new
    end
  end

  def destroy
    @product = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url
  end

  private
  def project_params
    params.require(:project).permit(:name, :goal, :deadline, :description, rewards_attributes: [:name, :description, :amount])
  end
end
