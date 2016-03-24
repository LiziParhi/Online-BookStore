class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
  	if params[:search]
  		 @products=Product.search(params[:search]).order("created_at DESC")
  		else
  			@item = "catalog"
			@products = Product.order(:title)
  end
end
end
