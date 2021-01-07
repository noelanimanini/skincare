class SearchesController < ApplicationController


    def home
        if params[:search_category]
            @search_style = true
            search_category = params[:search_category].titleize
            @products = Product.find(category: search_category)
            cookies[:last_visited] = "?search_category=#{params[:search_category]}"
        elsif params[:search]
            @search_style = true
            search_name = params[:search].titleize
            @products = Product.where(name: search_name)
            cookies[:last_visited] = "?search=#{params[:search]}"
            if @products.length.zero?
                render :home
            end
        else 
            cookies[:last_visited] = "home"
        end
        @products = Product.all
        @ingredients = Ingredient.all
    end

    # def stats
    #     @longest_review = Review.longest_review
    #     @average_review = Review.average_rating.round(2)
    #     @total_reviews = Review.total
    #     @total_breweries_on_brewqueue = Brewqueue.total
    #     @most_reviews = User.most_reviews
    #     @alcoholic = User.most_brewqueues
    #     @best_brewery = Brewery.highest_rated
    #     @most_bq_brewery = Brewery.find(Brewqueue.most_brewqueues)
    #     @city = Brewery.city_most
    #     @most_reviews_brewery = Brewery.most_reviews
    #     @state = Brewery.state_most
        
    # end

end

