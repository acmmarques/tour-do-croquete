class UserElectionsController < ApplicationController
  def create
    @election = Election.find(params[:election_id])
    if check_password(params[:password])
      @user_election = UserElection.new(user: current_user, election: @election)
      @user_election.save
      redirect_to election_path(@election)
    else
      flash[:alert] = "Password errada"
      redirect_to elections_path
    end
  end

  private

  def check_password(password)
    @election.password == password
  end
end
