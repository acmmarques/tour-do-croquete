class ElectionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @elections = Election.all
  end

  def show
    @election = Election.find(params[:id])
  end

  def results
    @election = Election.find(params[:id])
    @restaurants = @election.restaurants
    @restaurants.each do |restaurant|
      restaurant_average(restaurant)
    end
    finish_election(@election)
    @election.save
    redirect_to election_path(@election)
  end

  private

  def finish_election(election)
    election.finished = true
  end

  def restaurant_average(restaurant)
    unless restaurant.votes.empty?
      crunchiness = []
      flavour = []
      meat_ratio = []
      appearance = []
      restaurant.votes.each do |vote|
        crunchiness << vote.crunchiness
        flavour << vote.flavour
        meat_ratio << vote.meat_ratio
        appearance << vote.appearance
      end
      crunchiness = crunchiness.inject{ |sum, el| sum + el }.to_f / crunchiness.size
      flavour = flavour.inject{ |sum, el| sum + el }.to_f / flavour.size
      meat_ratio = meat_ratio.inject{ |sum, el| sum + el }.to_f / meat_ratio.size
      appearance = appearance.inject{ |sum, el| sum + el }.to_f / appearance.size
      restaurant.rating = ((crunchiness * 0.25) + (flavour * 0.35) + (meat_ratio * 0.15) + (appearance * 0.25)).round(2)
      restaurant.save
    end
  end

end
