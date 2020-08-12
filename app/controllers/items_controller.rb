class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images)
    # @parents = Category.where(ancestry: nil)
  end

  def new
    @item = Item.new
    @item.images.new
    @category_parent_array = Category.where(ancestry: nil)
  end

  def get_category_children
    @category_children = Category.find_by(id: params[:parent_name], ancestry: nil).children
 end


 def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
 end


  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path 
    end  
  end  

  



  private
  def item_params
    params.require(:item).permit(:name,:explain,:status_id,:delivery_cost_id,:area_id,:brand,:limit_id,:price,:category_id,images_attributes: [:image, :_destroy, :id])
  end
end
