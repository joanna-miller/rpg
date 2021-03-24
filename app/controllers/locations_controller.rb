class LocationsController < ApplicationController
  before_action :except => [:show] do
    unless current_user && current_user.admin
      flash[:notice] = "You are not authorized to visit that page"
      redirect_to item_path
    end
  end

  def index
    admin
    render :index
  end

  def new
    render :new
  end

  def create

  end
  
  def show
    @location = Location.find(params[:id])
    if @location.id == 2
      fork = Item.where(item: "Fork")
      fork << current_user
    end
    render :"show#{@location.id}"
  end



  def

  def edit

  end

  def delete

  end


end
