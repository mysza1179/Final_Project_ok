class TicketController < ApplicationController
 
  def create
    @project    = Project.find(params[:project_id])
    @ticket      = @project.tickets.build(tickets_params)
    @ticket.user = current_user
    @ticket.save
 
    redirect_to projects_url
 
  end	
 
  def destroy
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id]).destroy
    redirect_to projects_url
 
  end
 
  private
 
    # Never trust parameters from the scary internet, only allow the white list through.
  def tickets_params
    params.require(:ticket).permit(:name)
    end
 
end