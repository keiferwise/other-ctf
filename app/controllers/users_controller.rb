class UsersController < ApplicationController
  #
  def new
    @user = User.new
  end
  #
  def index
    require_user
    @users = User.all
  end
  #
  def create
    @user = User.new(users_params)
    if @user.save
      flash[:success] = "Account registered!"
      redirect_to root_path
    else
      render :new
    end
  end
  #
  def update
    require_staff
    @user = User.find(params[:id])
    if @user.update(users_params)
      redirect_to @users_params
    else
      render 'update_team'
    end
  end
  #
  def manage
    require_staff
    @users = User.all
  end
  #
  def edit
    require_staff
    @user = User.find(params[:id])
  end
  #
  def show
    require_user
    @user = User.find(params[:id])
  end

  private

  def users_params
    params.require(:user).permit(:email, :login, :password, :password_confirmation,:firstname,:lastname)
  end
end



