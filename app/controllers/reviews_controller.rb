class ReviewsController < ApplicationController
    
    def show 
        @review = Review.find(params[:id])
        @ingredients = Ingredient.find(params[:id])
    end 
    
    def new 
        @review = Review.new
    end 

    def create
        @review = Review.create(review_params)
        if @review.save
            # redirect_to @review
        else
            render :new 
        end 
    end 

    def destroy
        
    end 

    def edit
    end 

    def update
    end 
    private

    def review_params 
        params.require(:review).permit(:comment, :rating, :user_id, :product_id)
    end 
end
