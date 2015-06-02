class TicketsController < ApplicationController
  before_filter :load_project
    def index
      @tickets=@project.tickets.all
  end
  
  def show
    @ticket = @project.tickets.find(params[:id])
  end
   def new

     @ticket = @project.tickets.new
   end
  
    def edit
      @ticket = @project.tickets.find(params[:id])
    end
  
   def update
     @ticket = @project.tickets.find(params[:id])
     @ticket.update_attributes(ticket_params)
     redirect_to @project
   end
  
  def create
    @ticket = @project.tickets.new(ticket_params)
       if @ticket.save
         redirect_to [@project, @ticket], notice: 'Child was successfully created.' 
       else 
         render 'new'
     end
  end
    private

  def load_project
    @project = Project.find(params[:project_id])
    end
  
  
  def ticket_params
    params.require(:ticket).permit(:title, :description, :priority, :difficulty, :status)
  end
  end

