class PostsController < ApplicationController
  before_action :authorize
  
  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)

    if @post.save
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])

    if @post.update(post_params)
      flash.notice = "Post updated."
      redirect_to user_path(@post.user)
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])

    @post.destroy
    flash.notice = "Post deleted"
    redirect_to user_path(@user)
  end

  private
    def post_params
      params.require(:post).permit(
        :title,
        :description,
        :project_url,
        :blog_url,
        :category
      )
    end

end
