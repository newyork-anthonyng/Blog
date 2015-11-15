class WelcomeController < ApplicationController

  def index
    @project_posts = Post.all.where(category: "project").order(created_at: :desc).limit(5);
  end

  def projects
    @project_posts = Post.all.where(category: "project").order(created_at: :desc);
  end

end
