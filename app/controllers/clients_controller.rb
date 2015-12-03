class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def create
    $temp_pass = password_gen
    @client = Client.create(client_params)
    binding.pry
    if @client.save
      ClientMailer.welcome_email(@client).deliver_now
      redirect_to client_path(@client)
    else
      redirect_to new_client_path, :flash => {:error => @client.errors.full_messages}
    end
  end

  def login
  end

  private

  def client_params
    client_params = params.require(:client).permit(:full_name, :email, :password, :coach_id)
  end
end