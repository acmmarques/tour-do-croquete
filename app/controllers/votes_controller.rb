class VotesController < ApplicationController

  def new
    @vote = Vote.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @vote = Vote.new(vote_params)
    restaurant = Restaurant.find(params[:restaurant_id])
    @vote.restaurant = restaurant
    @vote.user = current_user
    if @vote.save
      redirect_to election_path(restaurant.election)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    @vote = Vote.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to election_path(@vote.restaurant.election)
  end

  private

  def vote_params
    params.require(:vote).permit(:crunchiness, :flavour, :appearance, :meat_ratio)
  end
end
