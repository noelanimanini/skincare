class IngredientProductsController < ApplicationController
    def index
        @ingredientsproducts = IngredientProduct.all
    end 

    def show
        @ingredientsproduct = IngredientProduct.find(params[:id])
    end 
end
