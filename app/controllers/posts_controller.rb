class PostsController < ApplicationController
  def index
    # render text: 'AND SO IT BEGINS'
    @posts = Post.all
  end
end