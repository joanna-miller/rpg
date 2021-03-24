class MonstersController < ApplicationController
  before_action do
    redirect_to root_path unless current_user && current_user.admin
  end

  def index
    @monsters = Monster.all
    render :index
  end

  def new
    @location = Location.find(params[:location_id])
    @monster = @location.monsters.new
    render :new
  end

  def create
    @location = Location.find(params[:location_id])
    @monster = @location.monsters.new(monster_params)
    if @monster.save
      redirect_to monsters_path(@location)
    else
      render :new
    end
  end

  def edit
    @monster = Monster.find(params[:id])
    render :edit
  end

  def destroy
    monster = Monster.find(params[:id])
    monster.destroy
    redirect_to monsters_path
  end

  def show
    @monster = Monster.find(params[:id])
    render :show
  end

  def update
    @monster = Monster.find(params[:id])
    if @monster.update(monster_params)
      redirect_to monster_path
    else
      render :edit
    end
  end

  private
    def monster_params
      params.require(:monster).permit(:name, :bad_stuff, :level)
    end
  
end
