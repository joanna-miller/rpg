class ItemsController < ApplicationController

  before_action :only => [:edit, :new, :create, :update] do
    unless current_user && current_user.admin
      flash[:notice] = "You are not authorized to visit that page"
      redirect_to item_path
    end
  end

  def index
    @items = Item.all
    render :index
  end

  def new
    @item = Item.new
    render :new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    render :show
  end

  def edit
    @item = Item.find(params[:id])
    render :edit
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      flash[:notice] = "Item successfully updated"
      redirect_to item_path
    else
      flash[:notice] = "There was an issue updating the item"
      redirect_to edit_item_path
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  private
    def item_params
      params.require(:item).permit(:item, :item_type, :stat)
    end

end