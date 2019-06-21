class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    params[:id]
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroines = Heroine.new
  end

  def edit

  end

  def create
    @heroine = Heroine.new(heroine_params)

    respond_to do |format|
      if @heroine.save
        format.html { redirect_to @heroine, notice: 'Heroine was successfully created.' }
        format.json { render :show, status: :created, location: @heroine }
      else
        format.html { render :new }
        format.json { render json: @heroine.errors, status: :unprocessable_entity }
      end
    end
  end


  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
