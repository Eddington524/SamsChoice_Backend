class ItemsController < ApiController
  before_action :set_item, only: [:show, :update, :destroy]  

  def index
    items = Item.all
    render json: each_serialize(items)
    # items = Item.ransack(index_params).result
    # render json: {
    #   items: each_serialize(items),
    #   total_count: items.count
    # }
  end

  def show
    render json: serialize(@item)
  end
  

  def create
    item = Item.create(item_params)
    render json: serialize(item)
  end

  def update
    @item.update(item_params)
    render json: serialize(@item)
  end

  def destroy
    @item.destroy
    render json: serialize(@item)
  end

  def category_item
    category_items = Item.where(category_id: params[:id])
    category_data = Category.where(id: params[:id])
    render json: {
      category_items: category_items,
      category_data: category_data
    }
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :category_id, :image, :description, :status)
  end

  def set_item
    @item = Item.find(params[:id])
  end
  # def index_params
  #   params.fetch(:q, {}).permit(:s, :category_id_eq)
  # end

end