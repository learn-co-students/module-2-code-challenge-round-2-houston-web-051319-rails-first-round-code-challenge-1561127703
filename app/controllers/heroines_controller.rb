class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  def show
    @hero = Heroine.find(params[:id])
  end
  def new
    @powers=Power.all
  end
  def create
 
    x = Heroine.create(hero_params[:hero])
   
    redirect_to "/heroines/#{x.id}"
  end
  def search
    byebug
    @power = Power.find_by(name: power_params[:name])
  end
  def hero_params
    params.permit(
      hero: [
        :name,
        :super_name,
        :power_id
      ]
    )
    end
    def power_params
      params.permit(
        :name
      )
    end
end
