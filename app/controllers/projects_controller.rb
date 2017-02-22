class ProjectsController < ApplicationController

  before_action :find_project, only: [:show, :edit, :update, :destroy, :add]


  def index
    @projects = Project.all.paginate(page: params[:page], per_page: 5)
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def create

    @project = Project.new(project_params)
    #@project.profiles.build(params[:profile_id])

    if @project.save
      flash[:create] = 'Project created'
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @project.destroy
    flash[:destroy] = 'Delete project'
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:project_name, :project_id, :description)
  end

  def find_project
    @project = Project.find(params[:id])
  end


end

