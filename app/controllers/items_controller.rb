class ItemsController < ApplicationController
before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    # @items = Item.where(user_id: current_user)
    @items = Item.all
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
      render "New"
    end
  end

  def destroy
  end

  def update
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
