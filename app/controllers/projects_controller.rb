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
end
