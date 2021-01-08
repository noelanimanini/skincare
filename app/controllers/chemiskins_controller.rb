class ChemiskinsController < ApplicationController
    def create
        if cookies[:last_visited].include?("search")
            params[:Chemiskin].each do |ck|
                new_ck = Chemiskin.new(product_id:ck,user:current_user)
                new_ck.save
            end
            redirect_to profile_path(current_user)
        else
            cemiskin = Chemiskin.new(chemiskin_params)
            cemiskin.save
            redirect_to product_path(cemiskin.product)
        end
        
    end

    def destroy
        if cookies[:last_visited] == "profile"
            cemiskin = Chemiskin.find(params[:id])
            cemiskin.destroy
            redirect_to profile_path
        else

        cemiskin = Chemiskin.find(params[:id])
        product = cemiskin.product
        cemiskin.destroy
        redirect_to product_path(product)
        end
    end

    private

    def chemiskin_params
        params.require(:chemiskin).permit(:user_id,:product_id)
    end
end
