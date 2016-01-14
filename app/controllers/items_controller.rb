class ItemsController < ApplicationController
before_action :find_item, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!


  def index
    # @items = Item.where(user_id: current_user)
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
    # @items = current_user.items.build
  end

  def create
    @item = Item.new(items_params)

    if @item.save
      redirect_to @item
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @item.update(items_params)
      redirect_to @item
    else
      render "Edit"
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path, notice: "Successfully deleted recipe"
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price, :image)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
