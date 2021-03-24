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
    render :show
  end

  def edit

  end

  def delete

  end


end
