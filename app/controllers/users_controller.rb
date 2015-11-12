class UsersController < ApplicationController
  before_action :authorize

  def show
    @user = User.find(params[:id])
    @posts = Post.all.where(:user_id == @user.id)
  end

end
