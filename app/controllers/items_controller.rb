class ItemsController < ApplicationController

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

end
