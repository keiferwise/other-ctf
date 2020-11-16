class SponsorsController < ApplicationController
    #
    def new
        require_staff
        @sponsor = Sponsor.new
    end
    #
    def index
        @sponsors = Sponsor.all 
    end
    #
    def show
        @sponsor = Sponsor.find(params[:id])
    end
    #
    def edit
        require_staff
        @sponsor = Sponsor.find(params[:id])
    end
    #

    #
    def create
        require_staff
        @sponsor = Sponsor.new(sponsor_params)
        if @sponsor.save 
          redirect_to @sponsor
        else
          render 'new'
        end
    end
    #
    def manage
        require_staff
        @sponsors = Sponsor.all
    end
    #
    def update
        require_staff
        @sponsor = Sponsor.find(params[:id])
       
        if @sponsor.update(sponsor_params)
          redirect_to @sponsor
        else
          render 'edit'
        end
      end
  #
  private
  def sponsor_params
    params.require(:sponsor).permit(:title, :slogan, :about, :link)
  end
end
