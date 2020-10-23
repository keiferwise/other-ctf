class ChallengesController < ApplicationController


  def index
    require_user
    @challenges = Challenge.all
  end
  def show
    require_user
    @challenge = Challenge.find(params[:id])
  end
end
