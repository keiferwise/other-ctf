class WelcomeController < ApplicationController
  def index
    @contest = current_contest
  end
end
