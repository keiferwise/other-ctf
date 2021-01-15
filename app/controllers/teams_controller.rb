class TeamsController < ApplicationController
  #
  def index
    @contest = current_contest
    require_user
    @teams = Team.all.order(score: :desc)
  end
  #
  def show
    @contest = current_contest
    require_user
    @team = Team.find(params[:id])
  end
  #
  def new
    require_staff
    @team = Team.new
  end
  #
  def manage
    require_staff
    @teams = Team.all
  end
  #
  def update
    require_staff
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to @team_params
    else
      render 'update_team'
    end
  end
  #

  #
  def edit
    require_staff
    @team = Team.find(params[:id])
  end
  #
  def create
    require_staff
    @team = Team.new(team_params)
    @team.contest_id = (Contest.find_by active: true).id
    if @team.save
      redirect_to @team
    else
      render 'new'
    end
  end
  #
  def destroy
  end
  #
  private
  def team_params
    params.require(:team).permit(:title)
  end
end
