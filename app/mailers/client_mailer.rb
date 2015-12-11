class ClientMailer < ApplicationMailer

  def welcome_email(client)
    @client = client
    @url = "http://clarit-y.herokuapp.com/client/login"
    mail(to: @client.email, subject: "#{@client.coach.full_name} Added You On Clarity")
  end

end
