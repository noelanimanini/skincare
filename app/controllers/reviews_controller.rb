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
       if @review.valid?
            redirect_to @review
       else 
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
       end 
    end 

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end 

    def edit
        @review = Review.find(params[:id])
    end 

    def update
        @review = Review.create(review_params)
       if @review.valid?
            redirect_to @review
       else 
            flash[:errors] = @review.errors.full_messages
            redirect_to edit_review_path
       end 
    end 

    private

    def review_params 
        params.require(:review).permit(:comment, :rating, :user_id, :product_id)
    end 
end
