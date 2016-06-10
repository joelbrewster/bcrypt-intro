class PostsController < ApplicationController
  before_filter :authorize

  def index
    @posts = Post.all
  end
  def showcomments
    @post = Post.find(params[:id])
  end
end