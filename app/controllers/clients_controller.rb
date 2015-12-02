class ClientsController




  private

  def client_params
    client_params = params.require(:coach).permit(:full_name, :email, :password, :coach_id)
  end
end