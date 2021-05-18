class CategoriesController < ApiController
  def index
    categories = Category.all
    render json: each_serialize(categories, serializer_name: :CategorySerializer)
  end

  def show
    render json: serialize(@category)
  end

  def create
    category = Category.create(category_params)
    render json: serialize(category)
  end

  def update
    @category.update(category_params)
    render json: serialize(@category)
  end

  private
  def category_params
    params.require(:category).permit(:title, :image_path)
  end

  def set_Category
    @category = Category.find(params[:id])
  end
end

