class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @count = increment_count
  end
  def increment_count
    if session[:count].nil?
      session[:count] = 0
    else
      session[:count]+=1
    end
  end
end
