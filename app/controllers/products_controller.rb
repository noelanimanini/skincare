class ProductsController < ApplicationController
    def index
        @products = Product.all
    end 
    def show
       @product = Product.find(params[:id])
       if current_user
        if current_user.reviewees.include?(@product)
            @user_review = Review.find_by(reviewer: current_user, reviewee: @product)
        else
            @review = Review.new
        end
        end
       cookies[:last_visited] = @product.id
    end
end
   