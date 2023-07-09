class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
    set_election
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    set_election
    @restaurant.election = @election
    if @restaurant.save
      redirect_to election_path(@election)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :photo)
  end

  def set_election
    @election = Election.find(params[:election_id])
  end
end
