class GoalsController < ApplicationController

  def new
    @client_id = params[:'data-client-id'].to_i
    @goal = Goal.new

  end

  def create
    @goal = Goal.create(goal_params)
    redirect_to client_path(@goal.client.id)
  end

  private

  def goal_params
    goal_params = params.require(:goal).permit(:statement, :notes, :client_id, :completed)
  end
end