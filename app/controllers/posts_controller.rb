class PostsController < ApiController
  before_action :set_post, only: %[show update destroy]
  def index
    posts = Post.all
    render json: each_serialize(posts)
  end

  def show
    render json: serialize(@post)
  end

  def create
    @post = current_api_user.posts.create(post_params)
    render json: serialize(@post)
  end

  def update
    @post.update(post_params)
    render json: serialize(@post)
  end

  def destroy
    @post.destroy
    render json: serialize(@post)
  end
  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end