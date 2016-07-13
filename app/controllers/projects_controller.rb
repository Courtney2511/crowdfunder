class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.rewards.build
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user #Must assign the current_user to the project being created
    if @project.save
      redirect_to projects_path
    else
      puts "ERROR: #{@project.errors.full_messages}"
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :goal, :deadline, rewards_attributes: [:name, :description, :amount])
  end
end
