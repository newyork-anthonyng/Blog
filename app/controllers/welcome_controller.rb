class WelcomeController < ApplicationController

  def index

  end

  def new

  end

  def projects
    @project_posts = Post.all.where(category: "Project")
  end

  def miscellaneous
    @misc_posts = Post.all.where(category: "Miscellaneous")
  end

end
