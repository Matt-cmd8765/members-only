class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(current_user.id)
    @post = @user.posts.create(post_params)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end
#     if @post.save
#       redirect_to @post
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

  private
  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
