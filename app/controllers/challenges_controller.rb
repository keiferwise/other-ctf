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
  #
  def new
    require_staff
    @challenge = Challenge.new
  end
  #
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
  #Submit answer
  def submit_flag

    # Check if the team has already solved the challenge

    # check if the submitted flag mateches one of the flags with the challenge ID

    # If all these are passed, create solve entry

    # check hints to see if this team has used the hint for this challenge
      #if yes, subtract penalty
      #if no don't subtract penalty

    # add points to their score

    # return them to the challenge page with some kind of congratuatory message

    # else (if one of the checks fails) return the user
  end
  # Get Hint
  def get_hint
    # check if the team already got the hint
      #if they have, redirect to challenge page (could be caused by two team memeber pressing around the same time)
    # check if the challenge is solved
      # redirect back to challenge
    # If these two are passed
      # create hint entry
      # redirect back with hint now revealed
  end
  #
  private
  def challenge_params
    params.require(:challenge).permit(:title, :description,:point_value,:hint,:link,:connection_string)
  end
end
