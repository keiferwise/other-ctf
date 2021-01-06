class ChallengesController < ApplicationController
  #
  def index
    @contest = current_contest
    require_user
    @categories = Category.all
    @challenges = Challenge.all
  end
  #
  def show
    @contest = current_contest
    @challenge = Challenge.find(params[:id])
    require_user
    hinted = Hint.find_by(team_id: current_user.team_id, challenge_id: @challenge.id)
    @hint = false
    if hinted == nil
      @hint = false
    else
      @hint = true
    end
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
    require_participant
    team = Team.find(current_user.team_id)
    p team.id
    p team.score
    @challenge = Challenge.find(params[:id])
    p @challenge.id
    p @challenge.point_value
    p params[:submitted_flag]
    flags = Flag.where(challenge_id: @challenge.id)
    hint = Hint.find_by(challenge_id: @challenge.id, team_id: team.id)
    solve = Solve.find_by(challenge_id: @challenge.id, team_id: team.id)
    new_score = team.score
    flag_correct = false
    # check i f the submitted flag mateches one of the flags with the challenge ID
    flags.each do |flag|
      p flag.answer
      if(params[:submitted_flag] == flag.answer)
        flag_correct = true
        flash.now[:success] = "Challenge Solved"
        p "flag accepted"
      else
        p "flag incorrect"
      end
    end
    
    if flag_correct
      # Check i f the team has already solved the challenge
      if solve == nil
        # check hints to see i f this team has used the hint fo r this challenge
        # I f all these are passed, create solve entry
        Solve.create(team_id:team.id, challenge_id:@challenge.id)
        if hint == nil
          #i f no don't subtract penalty
          new_score = team.score + @challenge.point_value
          p "full reward given" 
          p @challenge.point_value
        else  
          #i f yes, subtract penalty
          p team.score
          new_score = team.score + @challenge.point_value - @challenge.penalty
          p @challenge.point_value
          p @challenge.penalty
          p "penalty applyed to award"
        end
        p new_score
        team.update(score: new_score)
      else
        flash.now[:success] = "Challenge already solved"
        p "already solved"

      end
      
    end
    # return them to the challenge page with some kind of congratuatory message    
    redirect_to @challenge
  end
  # Get Hint
  def get_hint
    require_participant
    team = Team.find(current_user.team_id)
    @challenge = Challenge.find(params[:id])
    # check if the team already got the hint
    hint = Hint.find_by(challenge_id: @challenge.id, team_id: team.id)
    solve = Solve.find_by(challenge_id: @challenge.id, team_id: team.id)
    if hint == nil && solve == nil
      Hint.create(team_id: team.id, challenge_id: @challenge.id)
    else
      #nothing
    end
    

      #if they have, redirect to challenge page (could be caused by two team memeber pressing around the same time)
    # check if the challenge is solved
      # redirect back to challenge
    # If these two are passed
      # create hint entry
      # redirect back with hint now revealed
      redirect_to @challenge
  end
  #
  private
  def challenge_params
    params.require(:challenge).permit(:title, :description,:point_value,:hint,:link,:connection_string)
  end
end
