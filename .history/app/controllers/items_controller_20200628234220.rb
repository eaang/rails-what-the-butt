class ItemsController < ApplicationController
  def index
    Item.last.destroy if Item.all.length == 7
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    redirect_to @item
  end

  def calculate
    @item = Item.find(params[:id])
    if params[:measure] == 'butt'
      @results = (@item.volume / 126).round(3)
      @unit = 'butt'
    elsif params[:measure] == 'shit'
      @results = (@item.volume / 0.121).round(3)
      @unit = 'shit'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :volume, :units)
  end

  def calc_volume(item)
    if item.units == 'gallons'
      return item.volume
    elsif item.units == 'ounces'
      return item.volume / 128
    elsif item.units == 'litres'
      return item.volume / 3.785
    elsif item.units == 'millilitres'
      return item.volume / 3785
    end
  end
end
