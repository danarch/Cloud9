class PostsController < ApplicationController
  def index
    @posts = Post.all.includes(:user)
    # render :index
  end

  def mine
    @posts = current_user.posts.all.includes(:user)
    # render :index
  end

  def show
    @post = Post.find params[:id]
    # render :show
  end

  def create
    @post = current_user.posts.new post_params
    if @post.save
      redirect_to @post
      # render :show
    else
      render_invalid @post
    end
  end

  def update
    @post = current_user.posts.find params[:id]
    if @post.update post_params
      redirect_to @post
      # render :show
    else
      render_invalid @post
    end
  end

  def delete
    @post = current_user.posts.find params[:id]
    @post.delete
    # render :show
  end

private

  def post_params
    params.require(:post).permit(:cloudpic, :answer, :choice1, :choice2, :choice3)
  end

end
