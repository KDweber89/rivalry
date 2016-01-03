class ItemsController < ApplicationController
before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.where(user_id: current_user)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)

    if @item.new
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
    params.require(:item).permit
  end

  def find_item
  end
end
