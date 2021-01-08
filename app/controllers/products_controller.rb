class ProductsController < ApplicationController
    def index
        @products = Product.all
    end 
    def show
       @product = Product.find(params[:id])
       
    #    if current_user
    #     if current_user.products.include?(@product)
    #         @user_review = Review.
    #     else
    #         @review = Review.new
    #     end
    #     end
    #    cookies[:last_visited] = @product.id
    end
end
   