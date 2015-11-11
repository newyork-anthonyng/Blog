class PostsController < ApplicationController

  def index

  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)

    redirect_to uswer_path(@user)
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
