class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(params[:vote_params])
    @vote.average = (@vote.crunchiness * 0.35) + (@vote.flavour * 0.65)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
