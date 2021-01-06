class UsersController < ApplicationController 
    def new 
        @user = User.new 
    end

    def show 
        @user = User.find(params[:id])
        @products = Product.all
    end

    def create
        @user = User.create(user_params)
       if @user.valid?
            redirect_to @user
       else 
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
       end 

    end 

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to new_user_path
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :password_digest)
    end 
end
