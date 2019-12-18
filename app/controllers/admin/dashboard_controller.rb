class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['JUNGLE_USERNAME'], password: ENV['JUNGLE_PASSWORD']
  
  def show
    @products = Product.all
    @categories = Category.all
    #raise @products.inspect
    #raise @categories.inspect
  end
end
