class ChallengesController < ApplicationController
  #
  def index
    require_user
    @challenges = Challenge.all
  end
  #
  def show
    require_user
    @challenge = Challenge.find(params[:id])
  end
  #
  def manage
    require_staff
    @challenges = Challenge.all
  end
  #
  def edit
    require_staff
    @challenge = Challenge.find(params[:id])
  end
  #
  def update
    require_staff
    @challenge = Challenge.find(params[:id])
    if @challenge.update(challenge_params)
      redirect_to @challenge
    else
      render 'update_challenge'
    end
  end

  def new
    require_staff
    @challenge = Challenge.new
  end

  def create
    require_staff
    @challenge = Challenge.new(challenge_params)
    @challenge.contest_id = (Contest.find_by active: true).id
    if @challenge.save 
      redirect_to @challenge
    else
      render 'new'
    end
  end
  #
  private
  def challenge_params
    params.require(:challenge).permit(:title, :description,:point_value,:hint,:link,:connection_string)
  end
end
