class PostsController < ApplicationController
  def new
  end

 def create
   def create
    @post = Post.new(params[:post].permit(:title, :text))

    @post.save
    redirect_to @post
  end

private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
def show
  @post = Post.find(params[:id])
end
end