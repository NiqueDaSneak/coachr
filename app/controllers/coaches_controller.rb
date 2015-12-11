class CoachesController < ApplicationController

  def new
    @coach = Coach.new
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.save
      session[:coach_id] = @coach.id
      redirect_to coach_path(@coach)
    else
      redirect_to new_coach_path, :flash => {:error => "Make sure all required fields are filled in."}
    end
  end

  def login
  end

  def show
    @coach = Coach.find(params[:id])
  end


  def find
    @coach = Coach.find_by(email: params[:email].downcase)
    if @coach && @coach.authenticate(params[:password])
      session[:coach_id] = @coach.id
      redirect_to coach_path(@coach)
    else
      flash[:error] = "Bad username or password."
      redirect_to coach_login_path
    end
  end


  private

  def coach_params
    coach_params = params.require(:coach).permit(:full_name, :email, :password, :company_name)
  end

end