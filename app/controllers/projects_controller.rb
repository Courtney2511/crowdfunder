class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
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
    params.require(:project).permit(:name, :goal, :deadline, rewards_attributes: [:name, :description, :amount])
  end
end
