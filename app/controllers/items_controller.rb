class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images)
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.create(item_params)
  end  

  private
  def item_params
    params.require(:item).permit(:name,:explain,:status,:delivery_cost,:area,:limit,:price,:category_id,:brand_id,images_attributes: [:image, :_destroy, :id])
  end
end

