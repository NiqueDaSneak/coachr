class ClientMailer < ApplicationMailer

  def welcome_email(client)
    @client = client
    @url = "http://localhost:3000/client/login"
    mail(to: @client.email, subject: "#{@client.coach.full_name} Added You On Clarity")
  end

end
