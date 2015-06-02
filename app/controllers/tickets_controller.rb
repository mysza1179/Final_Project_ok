class TicketsController < ApplicationController
 
  def create
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.build(tickets_params)
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
 
  def tickets_params
    params.require(:ticket).permit(:name, :description, :difficulty, :status)
  end 
end