class CategoriesController < ApiController
  def index
    categories = Category.all
    render json: each_serialize(categories, serializer_name: :CategorySerializer)
  end

  def show
    category = Category.find(params[:id])
    render json: serialize(category)
  end

  def create
    category = Category.create(params[:id])
    render json: serialize(category)
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    render json: serialize(category)
  end

  private
  def category_params
    params.require(:category).permit(:title, :image_path)
  end
end

