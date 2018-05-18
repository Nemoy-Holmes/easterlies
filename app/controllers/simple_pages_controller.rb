class SimplePagesController < ApplicationController
  def index
  	@products = Product.limit(3)
  end
end
