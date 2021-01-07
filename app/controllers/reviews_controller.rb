class ReviewsController < ApplicationController
    def new 
        @review = Review.new
    end 
    
    def create
        review = Review.new(review_params)
        if review.valid?
        review.save
        redirect_to product_path(@product)
        else
            @product = review.reviewee
            @review = review
            render "products/show"
        end
    end

    def edit
        @review = Review.find(params[:id]) 
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to product_path(@review.reviewee)
    end

    def destroy
        product = Review.find(params[:id]).reviewee
        Review.destroy(params[:id])
        redirect_to product_path(brewery)
    end


    private

    def review_params
        params.require(:review).permit(:content,:rating,:reviewer_id,:reviewee_id)
    end

end





