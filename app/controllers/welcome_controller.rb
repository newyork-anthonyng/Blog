class WelcomeController < ApplicationController

  def index
    @project_posts = Post.all.where(category: "project").order(created_at: :desc);
  end

end
