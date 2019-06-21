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
    byebug
    x = Heroine.create(hero_params[:hero])
    byebug
    redirect_to "/heroines/#{x.id}"
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
end
