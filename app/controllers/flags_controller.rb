class FlagsController < ApplicationController
  #
  def index
    require_user
    @flags = Flag.all
  end
  #
  def show
    require_user
    @flag = Flag.find(params[:id])
  end
  #
  def manage
    require_staff
    @flags = Flag.all
  end
  #
  def edit
    require_staff
    @flag = Flag.find(params[:id])
  end
  #
  def update
    require_staff
    @flag = Flag.find(params[:id])
    if @flag.update(flag_params)
      redirect_to @flag
    else
      render 'update_flag'
    end
  end
  #
  def new
    require_staff
    @flag = Flag.new
  end
  #
  def create
    require_staff
    @flag = Flag.new(flag_params)
    if @flag.save 
      redirect_to @flag
    else
      render 'new'
    end
  end
  #
  private
  def flag_params
    params.require(:flag).permit(:answer,:challenge_id)
  end
end
