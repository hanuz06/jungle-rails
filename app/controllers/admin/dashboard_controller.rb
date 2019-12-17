class Admin::DashboardController < ApplicationController
  def show
    @products = Product.all
    @categories = Category.all
    #raise @products.inspect
    #raise @categories.inspect
  end
end
