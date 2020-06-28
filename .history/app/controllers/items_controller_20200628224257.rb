class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  def calculate
    @item = Item.find(params[:id])
    if params[:measure] == 'butt'
      @results = @item.volume / 126
      @unit = 'butt'
    elsif params[:measure] == 'shit'
      @results = @item.volume / 0.121
      @unit = 'shit'
    end
  end

  private

  def item_params
  end
end
