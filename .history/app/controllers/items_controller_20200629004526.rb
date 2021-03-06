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
    volume = calc_volume(@item)
    if params[:measure] == 'butt'
      @results = (volume / 126).round(3)
    elsif params[:measure] == 'shit'
      @results = (volume / 0.121).round(3)
    elsif params[:measure] == 'flush'
      @results = (volume / 3.5).round(3)
    end
    @unit = params[:measure]
  end

  private

  def item_params
    params.require(:item).permit(:name, :volume, :unit)
  end

  def calc_volume(item)
    if item.unit == 'gallons'
      item.volume
    elsif item.unit == 'ounces'
      item.volume / 128
    elsif item.unit == 'litres'
      item.volume / 3.785
    elsif item.unit == 'millilitres'
      item.volume / 3785
    end
  end

  def conversion(params)
  end
end
