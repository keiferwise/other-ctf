class AdminController < ApplicationController
  def index
  end
  def manage_challenges
    @challenges = Challenge.all
  end
  def manage_challenge
    @challenge = Challenge.find(params[:id])
  end
  def update_challenge
    require_staff
    @article = Challenge.find(params[:id])
   
    if @article.update(challenge_params)
      redirect_to @challenge
    else
      render 'update_challenge'
    end
  end


  private
  def challenge_params
    params.require(:article).permit(:title, :description,:point_value,:hint,:link,:connection_string)
  end
end
