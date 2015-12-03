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

  def find
    @client = Client.find_by(email: params[:email])
      if @client && @client.authenticate(params[:password])
        session[:client_id] = @client.id
        if @client.first_login == true
          flash[:error] = "Thanks for joining us. Please verify your information & change your password."
          redirect_to edit_client_path(@client)
        else
          redirect_to client_path(@client)
        end
      else
        flash[:error] = "Bad username or password."
      redirect_to client_login_path
      end
  end

  def edit
    @client = Client.find(params[:id])
  end

  private

  def client_params
    client_params = params.require(:client).permit(:full_name, :email, :password, :coach_id)
  end
end