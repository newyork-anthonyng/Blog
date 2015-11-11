class WelcomeController < ApplicationController

  def index
    @project_posts = Post.all.where(category: "project")
  end

end
