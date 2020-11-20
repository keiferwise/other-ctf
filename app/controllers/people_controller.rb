class PeopleController < ApplicationController
  #
  def new
    require_staff
    @person = Person.new
  end
  #
  def create
    require_staff
    @person = Person.new(person_params)
    if @person.save 
      redirect_to @person
    else
      render 'new'
    end
  end
  #
  def edit
    require_staff
    @person = Person.find(params[:id])
  end
  #
  def manage
    require_staff
    @people = Person.all
  end
  #
  def show
    @contest = current_contest

    #require_user
    @person = Person.find(params[:id])
  end
  #
  def index
    @contest = current_contest

    #require_user
    @people = Person.all
  end
  #
  def update
    require_staff
    @person = Person.find(params[:id])
   
    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end
  #
  def destroy
    require_admin
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end
  #
  private
  def person_params
    params.require(:person).permit(:title, :text)
  end
end