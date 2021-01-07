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
    end
    def product
        @products = Product.all 
    end
    def ingredient
        @ingredients = Ingredient.all
    end

end

