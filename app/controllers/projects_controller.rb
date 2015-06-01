class ProjectsController < ApplicationController
   before_filter :authenticate_user!
  def index
    @projects=Project.all
  end
  
  def show
    @project=Project.find(params[:id])
  end
  
  def new
    @project=Project.new
  end
  
  def create
    @project=Project.new(project_params)
    
    if @project.save
      redirect_to project_path 
    else
      render "new"
    end
  end
  private
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
