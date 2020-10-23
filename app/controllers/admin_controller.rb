class AdminController < ApplicationController
  def index
  end
  def manage_challenges
    @challenges = Challenge.all
  end
end
