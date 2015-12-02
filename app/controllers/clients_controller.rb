class ClientsController < ApplicationController


  def login
  end

  private

  def client_params
    client_params = params.require(:coach).permit(:full_name, :email, :password, :coach_id)
  end
end