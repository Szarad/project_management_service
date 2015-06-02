class TicketsController < ApplicationController
  before_filter :load_project
    def index
      @tickets=@project.tickets.all
  end
  
   def new

     @ticket = @project.tickets.new
   end
  
    private

  def load_project
    @project = Project.find(params[:project_id])
    end
end
