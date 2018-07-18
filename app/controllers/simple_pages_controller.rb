class SimplePagesController < ApplicationController
  def index
  	@posts = Post.limit(3)
  end
end
