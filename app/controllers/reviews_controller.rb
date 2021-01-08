class ReviewsController < ApplicationController
   
    def index 
        @reviews = Review.all
    end 

    def show 
        @review = Review.find(params[:id])
    end 

    def new
        @review = Review.new
        @products = Product.all
    end 

    # def create
    #     @review = Review.create(review_params)
    #     if @review.valid? 
    #     redirect_to @review
    #     else 
    #     flash[:errors] = @review.errors.full_messages
    #      redirect_to new_review_path
    #     # render "new"
    #     end 
    # end 


    def create
        @products = Product.all
        @review = Review.new(review_params)
        if @review.valid?
        @review.save
        redirect_to product_path(@review.product)
        else
            render "reviews/new"
        end
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        if @review.valid? 
            redirect_to product_path(@review) 
        else 
            flash[:errors] = @review.errors.full_messages
            redirect_to edit_song_path
            # render "edit"
        end 
    end 

    def edit
        @review = Review.find(params[:id])
    end

    def destroy 
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to products_path
    end 

    private 

    def review_params
        params.require(:review).permit(:content, :rating, :product_id, :user_id)
    end 
end



