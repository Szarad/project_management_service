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
    @project=Project.new(params[:project])
    
    if @project.save
      redirect_to project_path, :notice =>"Your project was saved"
    else
      render "new"
    end
  end
end
